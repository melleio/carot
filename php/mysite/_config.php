<?php

global $project;
$project = 'mysite';

global $databaseConfig;
$databaseConfig = array(
        "type" => 'MySQLDatabase',
        "server" => 'mycarot.c0pz9rduf4ic.us-east-1.rds.amazonaws.com',
        "username" => 'carotUser',
        "password" => 'Bean1Jean',
        "database" => 'carot',
        "path" => '',
);
 Security::setDefaultAdmin('admin','sw0rdfish');
// Set the site locale
i18n::set_locale('en_US');

$allowedOrigins = array(
	'http://www-carot.us.melle.io',
	'https://www.med.upenn.edu',
	'http://carot.info',
	'http://www.med.upenn.edu'
);
 var_dump($_SERVER);
 if(array_key_exists('HTTP_REFERER', $_SERVER)){
 	foreach ($allowedOrigins as $key) {
	if(in_array($_SERVER['HTTP_REFERER'] == $key) ){
		header('Access-Control-Allow-Origin: '.$key);
		break;
	}
}
 }


//Re-route admin pages
$securePages = array(
	'/^admin/',
	'/^Security/'
);
$secureDomain = 'http://www-carot.us.melle.io';
if($securePages){
	if(!isset($_SERVER['REQUEST_URI'])) return;

	$relativeURL = Director::makeRelative(Director::absoluteURL($_SERVER['REQUEST_URI']));

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



