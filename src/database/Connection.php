<?php

require_once '../src/config.develop.php';

class Connection
{
    public function connect()
    {
        $config = getConfig();
        $conn = new mysqli($config['host'], $config['username'], $config['password'], "assignment3");
        if ($conn->connect_errno) {
            die("Could not connect: " . mysqli_connect_error());
        }
    }

}