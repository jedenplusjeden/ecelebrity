<?php

if(!class_exists('X_GoogleAnalyticsMobile'))
{
	class X_GoogleAnalyticsMobile
	{
		private $__utma; 						// Google Analytics __utma cookie
		private $__utma_c_time = 63072000; 		// 2 years (2 years is the default in Google Analytics)
		private $__utmb; 						// Google Analytics __utmb cookie
		private $__utmb_c_time = 1800; 			// 30 minutes (30 minutes is the default in Google Analytics)
		private $__utmc;						// Google Analytics __utmc cookie
		private $__utmz;						// Google Analytics __utmz cookie
		private $__utmz_c_time = 604800; 		// 7 days (6 months is the default in Google Analytics)		
		private $ga_utmhn;						// Site host
		private $ga_utmac;						// Google Analytics account
		private $ga_utmwv = "5.4.2";			// Google Analytics tracking code version (script based on 4.3.1 version at the first dev)
		private $ga_hash;						// Google Analytics hash for domain
		private $ga_utmhid;						// Random number used to link Analytics GIF requests with AdSense
		private $ga_utmr;						// Referral, complete URL
		private $ga_img = "http://www.google-analytics.com/__utm.gif";
		private $ga_search = array(array("google","q"),array("yahoo","p"),array("msn","q"),array("bing","q"),array("aol","query"),array("aol","encquery"),array("lycos","query"),array("ask","q"),array("altavista","q"),array("netscape","query"),array("cnn","query"),array("looksmart","qt"),array("about","terms"),array("mamma","query"),array("alltheweb","q"),array("gigablast","q"),array("voila","rdata"),array("virgilio","qs"),array("live","q"),array("baidu","wd"),array("alice","qs"),array("yandex","text"),array("najdi","q"),array("aol","q"),array("club-internet","query"),array("mama","query"),array("seznam","q"),array("search","q"),array("wp","szukaj"),array("onet","qt"),array("netsprint","q"),array("google.interia","q"),array("szukacz","q"),array("yam","k"),array("pchome","q"),array("kvasir","searchExpr"),array("sesam","q"),array("ozu","q"),array("terra","query"),array("nostrum","query"),array("mynet","q"),array("ekolay","q"),array("search.ilse","search_for"));
		private $ga_referer;
		private $time;
		private $ga_set_params;
		private $__utmhid;
		// private $store_name;
		private $tracking_codes = array();
	
		function __construct($ga_utmac, $ga_utmhn, $referer, $gclid, $utm_params = '', $URI = NULL, $ga_params = array())
		{
			$this->ga_utmac = $ga_utmac;
			$this->ga_utmhn = $ga_utmhn;
			$this->ga_hash = $this->Hash($ga_utmhn);
			$this->ga_utmhid = rand(1000000000,2147483647);
			$this->ga_utmr = (!empty($referer) ? $referer : 0);

			// Rebuild $_GET params (gclid|utm_source|utm_medium|utm_campaign|utm_content|utm_term)
			$_GET['gclid'] = (isset($gclid) and !empty($gclid)) ? $gclid : false;
			if(!empty($utm_params))
			{
				$tab_utm_params = $this->UtmParams2tab($utm_params);
				foreach($tab_utm_params as $param_name => $param) $_GET[$param_name] = $param;
			}
	
			// Set the time for the request
			$this->time = time();
			// Set the page URI that is request
			if($URI==NULL) $URI = $_SERVER['REQUEST_URI'];
			// Set the referer page
			$this->ga_referer = $referer;
			// Set the visitor source
			$source = $this->GetTrafficSource();
			
			// Set the new traffic source
			if($source["utmgclid"]!="") $source_str = "utmgclid=".$source["utmgclid"];
			else $source_str = "utmcsr=".$source["utmcsr"];
			$source_str .= "|utmccn=".$source["utmccn"]."|utmcmd=".$source["utmcmd"];
			if($source["utmctr"]!="") $source_str .= "|utmctr=".$source["utmctr"];
			if($source["utmcct"]!="") $source_str .= "|utmcct=".$source["utmcct"];
	
			// Set all extra parameters like screen resolution, color depth
			$this->ga_set_params = "";
			if(is_array($ga_params)) foreach ($ga_params as $key => $value) $this->ga_set_params .= "&".$key."=".rawurlencode($value);
				
			// Check if Google Analytics cookie "__utma" already exists
			if(isset($_COOKIE["__utma"]))
			{
				// Save cookies to local variable
				$this->__utma = $_COOKIE["__utma"];
				$this->__utmb = isset($_COOKIE["__utmb"]) ? $_COOKIE["__utmb"] : null;
				$this->__utmz = $_COOKIE["__utmz"];
				$__utmb = split("\.",$this->__utmb);
				if(strpos($this->__utmz,"utmgclid")>-1) $pos = strpos($this->__utmz,"utmgclid");
				else $pos = strpos($this->__utmz,"utmcsr");
				$__utmz = split("\.",Tools::substr($this->__utmz,0,$pos));
				$__utmz[4] = Tools::substr($this->__utmz,$pos);
				$__utma = split("\.",$this->__utma);
				// Check if Google Analytics "session" cookie "__utmc" exists, if not create one and update the number of visits in cookie: "__utma"
				if(!isset($_COOKIE["__utmc"]))
				{
					// Increase the number of visits
					$__utma[5] = $__utma[5]+1;
					// Update the time of the visit
					$__utma[3] = $__utma[4];
					$__utma[4] = $this->time;
					// Save cookies
					$this->__utma = join(".",$__utma);
					@setcookie("__utma", $this->__utma, $this->time+$this->__utma_c_time, "/", ".".$this->ga_utmhn);
					@setcookie("__utmc", $__utma[0], 0, "/", ".".$this->ga_utmhn);
					// Update "__utmb" cookie with the number of pageviews or create a new cookie
					if(isset($_COOKIE["__utmb"])) $__utmb[1] = 1;
					else $__utmb = array($__utma[0], 1, 10, $this->time);
				}
				else $__utmb[1] = $__utmb[1]+1; // Increase the number of pageviews in "__utmb" cookie
	
				// Update the traffic source
				if($__utmz[4]!=$source_str && $source["utmcsr"]!="(direct)") $__utmz = array($__utmz[0], $this->time, $__utma[5], $__utmz[3]+1, $source_str);
	
				// Save cookies "__utmb" and "__utmz"
				$this->__utmb = join(".",$__utmb);
				@setcookie("__utmb", $this->__utmb, $this->time+$this->__utmb_c_time, "/", ".".$this->ga_utmhn);
				$this->__utmz = join(".",$__utmz);
				@setcookie("__utmz", $this->__utmz, $this->time+$this->__utmz_c_time, "/", ".".$this->ga_utmhn);
			}
			else
			{
				// No Google Analytics cookies exists, create new ones and save them i local variables
				$cookieRandom = rand(1000000000,2147483647);
				$this->__utma = $this->ga_hash.".".$cookieRandom.".".$this->time.".".$this->time.".".$this->time.".1";
				$this->__utmb = $this->ga_hash.".1.10.".$this->time;
				$this->__utmc = $this->ga_hash;
				$this->__utmz = $this->ga_hash.".".$this->time.".1.1.".$source_str;
				@setcookie("__utma", $this->__utma, $this->time+$this->__utma_c_time, "/", ".".$this->ga_utmhn);
				@setcookie("__utmb", $this->__utmb, $this->time+$this->__utmb_c_time, "/", ".".$this->ga_utmhn);
				@setcookie("__utmc", $this->__utmc, 0, "/", ".".$this->ga_utmhn);
				@setcookie("__utmz", $this->__utmz, $this->time+$this->__utmz_c_time, "/", ".".$this->ga_utmhn);
			}
			//$this->__utmz = $this->ga_hash.".".$this->time.".1.1.".$source_str;
			// Create the pageview request to Google Analytics image
			if(!isset($ga_set_params)) $ga_set_params = "";
			//$this->tracking_codes[] = $this->ga_img."?utmwv=".$this->ga_utmwv."&utmn=".rand(1000000000,9999999999)."&utmhn=".$this->ga_utmhn."".$this->ga_set_params."&utmhid=".rand(1000000000,9999999999)."&utmr=".rawurlencode($this->ga_referer)."&utmp=".rawurlencode($URI)."&utmac=".$this->ga_utmac."&utmcc=__utma%3D".$this->__utma."%3B%2B__utmz%3D".rawurlencode($this->__utmz)."%3B";
		}

		function Hash($d)
		{
			if(!$d || $d=="") return 1;
			$h=0; $g=0;
			for($i = Tools::strlen($d)-1; $i >= 0; $i--)
			{
				$c = (int)(ord($d[$i]));
				$h = (($h << 6) & 0xfffffff) + $c + ($c << 14);
				$g = ($h & 0xfe00000);
				if($g!=0) $h = ($h ^ ($g >> 21));
			}
			return $h;
		}
		
		/*
		Here is how GA updates the campaign tracking cookie based on referrer:
		Direct traffic is always overwritten by referrals, organic and tagged campaigns and does not overwrite existing campaign information
		New campaign, referral or organic link that brings a visitor to the site always overrides the existing campaign cookie	*/
		// http://www.fantazia-shop.fr/chemise-ethnique-homme/994-k1086-chemise-mixte-petit-col-mao-noire-tissee-comme-du-lin.html?codesf=30860&utm_medium=cpc&utm_campaign=Shopping-flux&utm_term=Chemise+mixte+petit+col+mao+noire+tissee+comme+du+lin&utm_source=Twenga%28via+Shopping+Flux%29
		function GetTrafficSource()
		{
			if(isset($_GET["utm_source"]) && isset($_GET["utm_medium"]))
			{
				// The traffic source i set in the URL
				$utmccn = isset($_GET["utm_campaign"]) ? $_GET["utm_campaign"] : "(not set)";
				$utmcct = isset($_GET["utm_content"]) ? $_GET["utm_content"] : "(not set)";
				return array("utmgclid"=>"", "utmcsr"=>$_GET["utm_source"], "utmccn"=>$utmccn, "utmcmd"=>$_GET["utm_medium"], "utmctr"=>$_GET["utm_term"], "utmcct"=>$utmcct);
			}
			elseif($this->ga_referer!="")
			{
				// The treffic source is from a referral site
				$search_engine = $this->GetSearchEngine();
				// Check if it's a search engine
				if($search_engine) return $search_engine;
				else
				{
					// It's not a search engine and it's a new visit. Set the referer.
					$ref = $this->GetReferer();
					if(Tools::substr($ref["host"],0,4)=="www.") $ref["host"] = Tools::substr($ref["host"],4); // Remove www from URL
					return array("utmgclid"=>"", "utmcsr"=>$ref["host"], "utmccn"=>"(referral)", "utmcmd"=>"referral", "utmctr"=>"", "utmcct"=>$ref["uri"]);
				}
			}
			return array("utmgclid"=>"", "utmcsr"=>"(direct)", "utmccn"=>"(direct)", "utmcmd"=>"(none)", "utmctr"=>"", "utmcct"=>"");
		}
	
		function GetSearchEngine()
		{
			$ref = $this->GetReferer();
			for($ii=0;$ii<count($this->ga_search);$ii++) {
				if(strpos(Tools::strtolower($ref["host"]), Tools::strtolower($this->ga_search[$ii][0]))>-1) {
					$test1 = strpos($ref["referer"], "?".$this->ga_search[$ii][1]."=");
					$test2 = strpos($ref["referer"], "&".$this->ga_search[$ii][1]."=");
					$i = ($test1 > -1) ? $test1 : $test2;
					if($i>-1) {
						$k = Tools::substr($ref["referer"], $i+Tools::strlen($this->ga_search[$ii][1])+2, Tools::strlen($ref["referer"]));
						$i = strpos($k,"&");
						if($i > -1) $k = Tools::substr($k,0,$i);
						if($_GET["gclid"]) return array("utmgclid"=>$_GET["gclid"], "utmcsr"=>"", "utmccn"=>"(not set gclid)", "utmcmd"=>"(not set)", "utmctr"=>$k, "utmcct"=>"");
						else return array("utmgclid"=>"", "utmcsr"=>$this->ga_search[$ii][0], "utmccn"=>"(organic)", "utmcmd"=>"organic", "utmctr"=>$k, "utmcct"=>"");
					}
				}
			}
			return false;
		}
	
		function GetReferer()
		{
			$referer_tmp = $this->ga_referer;
			$pos = strpos($referer_tmp, "://");
			if($pos>0) $referer_tmp = $referer_tmp = Tools::substr($referer_tmp,$pos+3);
			$pos = strpos($referer_tmp, "/");
			if($pos>0) return array("host"=>Tools::substr($referer_tmp, 0, $pos), "uri"=>Tools::substr($referer_tmp, $pos), "referer"=>$this->ga_referer);
			else return array("host"=>$referer_tmp, "uri"=>"", "referer"=>$this->ga_referer);
		}
		
		public function UtmParams2tab($query)
		{
			$tab_params = array();
			$query_params = explode('&',$query);
			foreach($query_params as $param)
			{
				$explode_param = explode('=',$param);
				$tab_params[$explode_param[0]] = isset($explode_param[1]) ? $explode_param[1] : '';
			}
			return $tab_params;
		}
	
		function SetTransaction($order_id, $amount, $shipping, $tax, $city, $region, $country, $currency)
		{
			// Generate code to set a new transaction in Google Analytics
			$this->tracking_codes[] = $this->ga_img."?utmwv=".$this->ga_utmwv."&utmn=".rand(1000000000,9999999999)."&utmhn=".$this->ga_utmhn."&utmt=tran&utmtid=".$order_id."&utmtto=".$amount."&utmttx=".$tax."&utmtsp=".$shipping."&utmtci=".rawurlencode($city)."&utmtrg=".rawurlencode($region)."&utmtco=".rawurlencode($country).$this->ga_set_params."&utmhid=".$this->ga_utmhid."&utmr=".$this->ga_utmr."&utmcu=".$currency."&utmac=".$this->ga_utmac."&utmcc=__utma%3D".$this->__utma."%3B%2B__utmz%3D".rawurlencode($this->__utmz)."%3B";
		}
	
		function SetTransactionItem($order_id, $item_id, $category, $name, $price, $quantity, $currency)
		{
			// Generate code to set a new transaction item in Google Analytics, you must call the function SetTransaction before you call this one.
			$this->tracking_codes[] = $this->ga_img."?utmwv=".$this->ga_utmwv."&utmn=".rand(1000000000,9999999999)."&utmhn=".$this->ga_utmhn."&utmt=item&utmtid=".$order_id."&utmipc=".rawurlencode($item_id)."&utmipn=".rawurlencode($name)."&utmiva=".rawurlencode($category)."&utmipr=".$price."&utmiqt=".$quantity.$this->ga_set_params."&utmhid=".$this->ga_utmhid."&utmr=".$this->ga_utmr."&utmcu=".$currency."&utmac=".$this->ga_utmac."&utmcc=__utma%3D".$this->__utma."%3B%2B__utmz%3D".rawurlencode($this->__utmz)."%3B";
		}
	
		function GetTrackingCode()
		{
			// Return the Google Analytics code for this request
			return $this->tracking_codes;
		}
	}
}

?>