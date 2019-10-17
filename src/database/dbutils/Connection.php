<?php

require_once '../src/config.develop.php';

/**
 * Class Connection provides database connection and query
 * execution for all classes that inherit from it.
 */
class Connection
{
    private $connection;

    /**
     * Connection constructor creates database connection on class instantiation.
     * Because all DAO classess inherit from this class, their instantiation will also create
     * a connection.
     */
    public function __construct()
    {
        $config = getConfig();
        $this->connection = new mysqli($config['host'], $config['username'], $config['password'], $config["schema"]);
        if ($this->connection->connect_errno) {
            die("Could not connect: " . mysqli_connect_error());
        }
    }

    /**
     * Executes given SQL query string.
     *
     * @param $sqlQuery string
     * @return bool|mysqli_result according to the type of the query (see query function docs)
     */
    public function sqlQuery($sqlQuery)
    {
        $result = $this->connection->query($sqlQuery);
//        echo mysqli_error($this->connection);
        return $result;
    }
}