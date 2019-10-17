<?php

require_once 'autoloader.php';


$connection = new Connection();


$example = new UserInfoDao();

$all = $example->getAll();

echo json_encode($all);