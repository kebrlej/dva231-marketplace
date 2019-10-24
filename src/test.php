<?php

require 'includes.php';

$example = new UserDao();
$all = $example->getById(1);

echo json_encode($all);