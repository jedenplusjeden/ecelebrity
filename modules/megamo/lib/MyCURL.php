<?php
/**
 * @project    MyAdmin
 * @copyright  (c) 2011 FORIX
 * @license    http://forix.com.pl/licencja.html
 */


class MyCURL {

	protected $curl;
	protected $URL;

	protected $opts;


	public function getURL() {
		return $this->URL;
	}
	
	public function getOpts() {
		return $this->opts;
	}

	public function setURL($x) {
		$this->URL = $x;
	}
	
	public function setOpts($x) {
		$this->opts = $x;
	}


	public function setOpt($optName, $optValue) {
		$this->opts[$optName] = $optValue;
	}

	public function unsetOpt($optName) {
		unset($this->opts[$optName]);
	}

	public function __construct($URL, $returnTransfer = true, $binaryTransfer = false){
		$this->URL = $URL;

		if($returnTransfer){
			$this->setOpt(CURLOPT_RETURNTRANSFER, true);
		}

		if($returnTransfer){
			$this->setOpt(CURLOPT_BINARYTRANSFER, true);
		}
	}

	protected function prepare(){

		$ret = false;
		if($this->URL && is_resource($this->curl = curl_init())){
				
			$this->setOpt(CURLOPT_URL, $this->URL);
			curl_setopt_array($this->curl, $this->opts);
				
			$ret = true;
		}

		return $ret;
	}

	public function post($postFields){

		$ret = null;

		if($this->prepare() && is_array($postFields)){

			$this->setOpt(CURLOPT_POST, true);
			$this->setOpt(CURLOPT_POSTFIELDS, $postFields);

			curl_setopt_array($this->curl, $this->opts);
			$ret = curl_exec($this->curl);

			curl_close($this->curl);
		}

		return $ret;
	}

	public function downloadFile($dstFilePath){
		
		require_once('MyIO.php');

		$ret = false;
		$this->setOpt(CURLOPT_RETURNTRANSFER, true);

		if($this->prepare()){
			$data = curl_exec($this->curl);
			curl_close($this->curl);
			$ret = MyIO::saveFile($dstFilePath,$data);
		}

		return $ret;
	}

}
?>