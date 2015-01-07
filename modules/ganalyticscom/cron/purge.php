<?php

require_once(dirname(__FILE__).'/../../../config/config.inc.php');
require_once(dirname(__FILE__).'/../ganalyticscom.php');
$ganalyticscom = new Ganalyticscom();

$ganalyticscom->purgeDB();