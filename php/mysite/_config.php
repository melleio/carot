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

// Set the site locale
i18n::set_locale('en_US');