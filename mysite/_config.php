<?php

global $project;
$project = 'mysite';

global $databaseConfig;
$databaseConfig = array(
	"type" => 'MySQLDatabase',
	"server" => 'localhost',
	"username" => 'root',
	"password" => 'root',
	"database" => 'waytoplay',
	"path" => '',
);

// Set the site locale
i18n::set_locale('en_US');

Object::add_extension('SiteConfig', 'SiteDetails');
Object::add_extension('Member', 'MemberExtension');

Security::set_default_login_dest('home');