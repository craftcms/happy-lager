<?php

return [
    '*' => [
        'useDevServer' => false,
        'errorEntry' => '',
        'cacheKeySuffix' => '',
        'manifest' => [
            'legacy' => 'manifest.json',
            'modern' => 'manifest.json',
        ],
        'server' => [
            'manifestPath' => '@webroot/assets/build/',
            'publicPath' => '/',
        ],
        'devServer' => [
            'manifestPath' => 'http://localhost:5000/',
            'publicPath' => 'http://localhost:5000/',
        ],
        'localFiles' => [
            'basePath' => '@webroot/assets/build/',
        ],
    ],
    'live' => [
    ],
    'staging' => [
    ],
    'dev' => [
        'useDevServer' => true,
    ],
];

