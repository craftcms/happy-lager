<?php

/**
 * General Configuration
 *
 * All of your system's general configuration settings go in here.
 * You can see a list of the default settings in craft/app/etc/config/defaults/general.php
 */

return array(
	'*' => array(
		'devMode' => true,
		'environmentVariables' => array(
			'assetsBaseUrl' => '/assets',
			'assetsBasePath' => './assets',
		)
	),

	// Give CodeKit a custom site URL
	'.local' => array(
		'siteUrl' => "http://{$_SERVER['SERVER_NAME']}/",
	)
);
