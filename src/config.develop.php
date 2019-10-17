<?php
define('DOCUMENT_ROOT', "../src");

function getConfig()
{
    return array(
        'host' => 'localhost',
        'username' => 'root',
        'password' => '',
        'schema' => 'marketplace',
        'environment' => 'dev'
//        'API_URL' => "'http://localhost/api.php'",
    );

}