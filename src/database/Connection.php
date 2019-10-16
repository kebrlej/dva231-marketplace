<?php

require_once '../src/config.develop.php';

class Connection
{
    private $connection;

    public function __construct()
    {
        $config = getConfig();
        $this->connection = new mysqli($config['host'], $config['username'], $config['password'], "assignment3");
        if ($this->connection->connect_errno) {
            die("Could not connect: " . mysqli_connect_error());
        }
    }

    public function sqlQuery($sqlQuery)
    {
        return $this->connection->query($sqlQuery);
    }
}