<!doctype html>
<!--[if lt IE 7 ]> <html lang="en" class="ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en"> <!--<![endif]-->
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta charset="utf-8">        
    
    <title>{$meta_title|escape:'html':'UTF-8'}</title>
    
    {if isset($meta_description) AND $meta_description}
            <meta name="description" content="{$meta_description|escape:'html':'UTF-8'}" />
    {/if}
    {if isset($meta_keywords) AND $meta_keywords}
            <meta name="keywords" content="{$meta_keywords|escape:'html':'UTF-8'}" />
    {/if}
    <!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->
    <meta name="viewport" content="width=device-width, maximum-scale=1.0" /><!-- for iPad landscape mode -->
    
    <link rel="stylesheet" href="//www.dev.ecelebrity.eu/themes/default-bootstrap/css/reset.css">
    <link rel="stylesheet" href="//www.dev.ecelebrity.eu/themes/default-bootstrap/css/jquery.bxslider.css">
    <link rel="stylesheet" href="//www.dev.ecelebrity.eu/themes/default-bootstrap/css/magnificient.css">
    <link rel="stylesheet" href="//www.dev.ecelebrity.eu/themes/default-bootstrap/css/jquery-ui-1.9.2.css">
    <link rel="stylesheet" href="//www.dev.ecelebrity.eu/themes/default-bootstrap/css/style.css">
    <link rel="stylesheet" href="//www.dev.ecelebrity.eu/themes/default-bootstrap/css/responsive.css">
    <link rel="icon" href="//www.dev.ecelebrity.eu/themes/default-bootstrap/img/favicon.ico" />

    <script src="//www.dev.ecelebrity.eu/themes/default-bootstrap/js/modernizr-2.6.2.min.js"></script>
    <script>
        var baseDir = 'http://www.dev.ecelebrity.eu/';
        var baseUri = 'http://www.dev.ecelebrity.eu/';
        var lockLocationChecking;
        var static_token = '{$static_token}';
        var contentOnly = false;
    </script>
    {$js_def}
    {$HOOK_HEADER}
    <script>
        (function(i, s, o, g, r, a, m){
            i['GoogleAnalyticsObject'] = r;
            i[r] = i[r] || function(){
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date();
            a = s.createElement(o),
                    m = s.getElementsByTagName(o)[0];
            a.async = 1;
            a.src = g;
            m.parentNode.insertBefore(a, m)
        })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

        ga('create', 'UA-55920108-1', 'auto');
        ga('require', 'displayfeatures');
        ga('send', 'pageview');
    </script>
    <script>
        (function() {
            var _fbq = window._fbq || (window._fbq = []);
            if (!_fbq.loaded) {
                var fbds = document.createElement('script');
                fbds.async = true;
                fbds.src = '//connect.facebook.net/en_US/fbds.js';
                var s = document.getElementsByTagName('script')[0];
                s.parentNode.insertBefore(fbds, s);
                _fbq.loaded = true;
            }
            _fbq.push(['addPixelId', '667248896722283']);
        })();
        window._fbq = window._fbq || [];
        window._fbq.push(['track', 'PixelInitialized', {}]);
    </script>
    <noscript><img height="1" width="1" alt="" style="display:none" src="https://www.facebook.com/tr?id=667248896722283&amp;ev=PixelInitialized" /></noscript>
</head>
<body{if isset($page_name)} id="{$page_name|escape:'html':'UTF-8'}"{/if} class="{if isset($page_name)}{$page_name|escape:'html':'UTF-8'}{/if}{if isset($body_classes) && $body_classes|@count} {implode value=$body_classes separator=' '}{/if}{if $hide_left_column} hide-left-column{/if}{if $hide_right_column} hide-right-column{/if}{if isset($content_only) && $content_only} content_only{/if} lang_{$lang_iso}">
<div id="fb-root"></div>
<script>(function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = "//connect.facebook.net/pl_PL/sdk.js#xfbml=1&appId=177598142442609&version=v2.0";
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));</script>
<!--[if lt IE 7]><p class=chromeframe>Your browser is <em>ancient!</em> <a href="http://browsehappy.com/">Upgrade to a different browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">install Google Chrome Frame</a> to experience this site.</p><![endif]-->

<div id="login">
    <div class="container">
        <div id="search-tab" class="toggleClass">
            <form id="searchbox" method="get" action="/search">
                <div class="clearfix">
                    <div class="col-1">
                        <label for="">SZUKAJ</label>
                    </div>
                    <div class="col-2">
                        <input type="hidden" name="orderby" value="position">
                        <input type="hidden" name="orderway" value="desc">
                        <input class="search_query form-control ac_input" type="text" id="search_query_top" name="search_query" placeholder="Szukaj" value="" autocomplete="off">                        
                    </div>
                    <div class="col-3">
                        <button type="submit" name="submit_search" class="btn btn-default button-search">
                            <span>Szukaj</span>
                        </button>                        
                    </div>                    
                </div>
            </form>            
        </div>
        <div id="login-tab" class="toggleClass clearfix">
            <div class="left-column">
                <form action="http://www.dev.ecelebrity.eu/logowanie" method="post" id="login_form" class="box">
                    <div class="form-row clearfix">
                        <div class="form-col">
                            <div class="form-title">
                                <h3>LOGIN</h3>
                            </div>
                        </div>
                        <div class="form-col" style="text-align:right;">
                            <a href="/password-recovery">Zapomniałeś hasła?</a>
                        </div>
                    </div>
                    <div class="form-row clearfix">
                        <div class="form-col">
                            <label for="email">e-mail</label>
                        </div>
                        <div class="form-col">
                            <input class="is_required validate account_input form-control" data-validate="isEmail" type="text" id="email" name="email" value="">
                        </div>
                    </div>
                    <div class="form-row clearfix">
                        <div class="form-col">
                            <label for="passwd">hasło</label>
                        </div>
                        <div class="form-col">
                            <input class="is_required validate account_input form-control" type="password" data-validate="isPasswd" id="passwd" name="passwd" value="">
                        </div>
                    </div>
                    <div class="form-row clearfix">
                        <div class="form-col">
                            <p>&nbsp;</p>
                        </div>
                        <div class="form-col">
                            <input type="hidden" class="hidden" name="back" value="my-account">                     
                            <button type="submit" id="SubmitLogin" name="SubmitLogin" class="button btn btn-default button-medium">Zaloguj się</button>
                        </div>
                    </div>
                </form>                    
            </div>
            <div class="right-column">
                <form action="http://www.dev.ecelebrity.eu/logowanie" method="post" id="create-account_form" class="box">
                    <div class="title"><h3>STWÓRZ KONTO</h3><br></div>
                    <p style="font-size:11px; line-height: 18px;">Twój dostęp do sklepu Celebrity zaczyna się tutaj: zarejestruj swoje konto, śledź zamówienia i kupuj bezpiecznie za pomocą kilku kliknięć.</p><br>
                    <input type="hidden" class="hidden" name="back" value="">
                    <a href="/logowanie" class="btn btn-default button button-medium exclusive" type="submit" id="SubmitCreate" name="SubmitCreate">
                        Rejestracja
                    </a>
                    <input type="hidden" class="hidden" name="SubmitCreate" value="Stwórz konto">
                </form>
            </div>        
        </div>
        <div id="contact-tab" class="toggleClass">
            <div class="clearfix">
                <div class="col col-1">
                    <h2 style="font-size:1.3em;">Celebrity Spółka z ograniczoną odpowiedzialnością sp.k.</h2>
                </div>
                <div class="col col-2">
                    <p>Stanisław Dolny 488A<br/>34-130 Kalwaria Zebrzydowska</p>
                </div>
                <div class="col col-3">
                    <p>tel. +48 33 876 10 79<br/>fax. +48 33 872 50 40</p>
                </div>
                <div class="col col-4">
                    <p><a href="mailto:sekretariat@celebritybycb.com">sekretariat@celebritybycb.com</a><br><a href="mailto:sklep@celebritybycb.com">sklep@celebritybycb.com</a></p>
                </div>
            </div>
        </div>
    </div>
</div>
<div id="login-nav">
    <div class="container clearfix">
        <nav>
            <ul class="clearfix">
                <li><a href="#search-tab">SZUKAJ</a></li>
                {if $cookie->isLogged()}
                    <li><a href="/my-account">MOJE KONTO</a></li>
                {else}
                    <li><a href="#login-tab">LOGIN</a></li>
                {/if}
                <li><a href="#contact-tab">KONTAKT</a></li>
            </ul>
        </nav>
    </div>
</div>

<section id="header">
    <div class="container clearfix">
        <div id="logo">
            <a href="http://www.dev.ecelebrity.eu">
                <img src="//www.dev.ecelebrity.eu/themes/default-bootstrap/img/logo.png" alt="">
            </a>
        </div>
        {if isset($HOOK_TOP)}{$HOOK_TOP}{/if}   

    </div>
</section>

<section id="content">
	<div class="container">
        <div id="slider_row" class="row">
            <div id="top_column" class="center_column col-xs-12 col-sm-12">{hook h="displayTopColumn"}</div>
        </div>