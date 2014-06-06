<?php

global $project;
$project = 'mysite';

global $database;
$database = 'carot';

// Use _ss_environment.php file for configuration
require_once("conf/ConfigureFromEnv.php");

// Set the current theme. More themes can be downloaded from
// http://www.silverstripe.org/themes/
//SSViewer::setOption('rewriteHashlinks', false);

// Set the site locale
i18n::set_locale('en_US');

//Re-route admin pages
$securePages = array(
	'/^admin/',
	'/^Security/'
);
$secureDomain = 'http://www-carot.us.melle.io'
if($securePages){
	if(!isset($_SERVER['REQUEST_URI'])) return;

	$relativeURL = self::makeRelative(Director::absoluteURL($_SERVER['REQUEST_URI']));

	// protect portions of the site based on the pattern
	foreach($securePages as $pattern) {
		if(preg_match($pattern, $relativeURL)) {
			$url = 'http://' . $secureDomain . $_SERVER['REQUEST_URI'];
			$destURL = Director::absoluteURL($url);

			// This coupling to SapphireTest is necessary to test the destination URL and to not interfere with tests
			if(class_exists('SapphireTest', false) && SapphireTest::is_running_test()) {
				return $destURL;
			} else {
				self::force_redirect($destURL);
			}	
		}
	}
}
//if(Director::isLive()) Director::forceSSL($securePages,$secureDomain');

