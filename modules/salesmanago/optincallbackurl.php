<?php

//optin

include(dirname(__FILE__).'/../../config/config.inc.php');
include(dirname(__FILE__).'/../../config/settings.inc.php');
include(dirname(__FILE__).'/../../config/defines.inc.php');
include(dirname(__FILE__).'/../../header.php');

$data = array(
'newsletter' => '1',
);
$email = $_GET['email'];
$key = $_GET['key'];
$key2 = Configuration::get('SM_PRESTA');
$key3 = sha1($email . $key2);
if ($key == $key3)
{
Db::getInstance()->update('customer',$data, 'email = "'.$email.'"');
}
echo ('Dziękujemy za zapis na newsletter.');

?>

