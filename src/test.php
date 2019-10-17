<?php

require_once 'autoloader.php';


$example = new AdministratorDao();
$all = $example->getById(1);

echo json_encode($all);