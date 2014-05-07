<?php

global $project;
$project = 'mysite';

global $database;
$database = 'carot';

echo TEMP_FOLDER;
// Use _ss_environment.php file for configuration
require_once("conf/ConfigureFromEnv.php");

// Set the current theme. More themes can be downloaded from
// http://www.silverstripe.org/themes/
//SSViewer::setOption('rewriteHashlinks', false);

// Set the site locale
i18n::set_locale('en_US');
