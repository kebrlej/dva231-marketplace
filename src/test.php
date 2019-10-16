<?php

require_once 'autoloader.php';

$example = new UserInfoDao();

$all = $example->getAll();

echo json_encode($all);