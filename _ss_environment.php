<?php

$allowed_hosts = array('preview.phillypolice.com', 'dev.phillypolice.com');
//$_SERVER['HTTP_HOST'] = $allowed_hosts;
//$_SERVER['REQUEST_METHOD'] = 'Get';
define('SS_ENVIRONMENT_TYPE', 'dev');
$host = (getenv('OPENSHIFT_MYSQL_DB_HOST')) ? getenv('OPENSHIFT_MYSQL_DB_HOST') : putenv('OPENSHIFT_MYSQL_DB_HOSTlocalhost') ;
$port = (getenv('OPENSHIFT_MYSQL_DB_PORT')) ? getenv('OPENSHIFT_MYSQL_DB_PORT') : putenv('OPENSHIFT_MYSQL_DB_PORT=3306');
$user = (getenv('OPENSHIFT_MYSQL_DB_USERNAME')) ? getenv('OPENSHIFT_MYSQL_DB_USERNAME') : putenv('OPENSHIFT_MYSQL_DB_USERNAME=root') ;
$pass = (getenv('OPENSHIFT_MYSQL_DB_PASSWORD')) ? getenv('OPENSHIFT_MYSQL_DB_PASSWORD') : putenv('OPENSHIFT_MYSQL_DB_PASSWORD=root') ;
$repo_dir = (getenv('OPENSHIFT_REPO_DIR')) ? getenv('OPENSHIFT_REPO_DIR') : putenv('OPENSHIFT_REPO_DIR=/var/www/html/www/php') ;


define('SS_DATABASE_SERVER', getenv('OPENSHIFT_MYSQL_DB_HOST'));
define('SS_DATABASE_PORT', getenv('OPENSHIFT_MYSQL_DB_PORT'));
define("SS_DATABASE_USERNAME", getenv('OPENSHIFT_MYSQL_DB_USERNAME'));
define('SS_DATABASE_PASSWORD', getenv('OPENSHIFT_MYSQL_DB_PASSWORD'));
define('SS_DEFAULT_ADMIN_USERNAME', 'admin');
define('SS_DEFAULT_ADMIN_PASSWORD', 'sw0rdfish');


global $_FILE_TO_URL_MAPPING;
$_FILE_TO_URL_MAPPING[getenv('OPENSHIFT_REPO_DIR').'php'] = 'http://www.phillypolice.com/';
//$_FILE_TO_URL_MAPPING[getenv('OPENSHIFT_REPO_DIR')] = 'http://localhost/';
