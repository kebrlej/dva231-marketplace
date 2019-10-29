<?php

require "includes.php";

$userDao = new UserDao();

$values = array(
    "username" => "kebrlej",
    "email" => "kebrlej@gmail.com"
//    "password" => "kebrlej"
);

echo $userDao->insertIntoTable($values);
