<?php
define('_DB_SERVER_', 'localhost');
define('_DB_TYPE_', 'mysql');
define('_DB_NAME_', 'ecelebrity_main');
define('_DB_USER_', 'ecelebrity_main');
define('_DB_PASSWD_', 'ECelebrity@1plus1!');
define('_DB_PREFIX_', 'prstshp_');
define('_MYSQL_ENGINE_', 'InnoDB');

/*
if('/prestashop/'=='.' ||'/prestashop/'=='./' || '/prestashop/'=='/' || '/prestashop/'=='')
	{
	define('__PS_BASE_URI__', '/');
	}
else
	{
	define('__PS_BASE_URI__', '//prestashop//');
	}
	
*/	
define('_PS_CACHING_SYSTEM_', 'CacheMemcache');
define('_PS_CACHE_ENABLED_', '0');
define('_MEDIA_SERVER_1_', '');
define('_MEDIA_SERVER_2_', '');
define('_MEDIA_SERVER_3_', '');
//define('_THEME_NAME_', 'default');
define('_COOKIE_KEY_', 'mZzYc3kf2DG7Rej3wrmApXTcyHz7kqFaoHzk8q9VPZjIV9kzTVH9cYjS');
define('_COOKIE_IV_', 'z7eT6hDS');
define('_PS_CREATION_DATE_', '2014-08-25');
define('_PS_VERSION_', '1.6.0.9');
define('_RIJNDAEL_IV_', '@@RIJNDAEL_IV@@');
define('_RIJNDAEL_KEY_', '@@RIJNDAEL_KEY@@');
ini_set('memory_limit','512M');
set_time_limit(0);
define('APS', 'ON');
?>
