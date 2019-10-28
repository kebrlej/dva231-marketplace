<?php

require 'includes.php';

$example = new UserDao();
//$all = $example->getAll();
//
//$all = $example->getById(10);
//
//echo json_encode($all);
$userDto = new UserLoginDto();

echo $example->deleteById(110);