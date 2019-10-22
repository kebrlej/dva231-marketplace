<?php

require_once 'classAutoloader.php';


$example = new AdministratorDao();
$all = $example->getById(1);

echo json_encode($all);