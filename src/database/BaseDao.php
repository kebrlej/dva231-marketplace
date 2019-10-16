<?php


class BaseDao extends Connection
{
    private $tableName;

    public function __construct($tableName)
    {
        $this->tableName = $tableName;
        parent::__construct();
    }


    public function getAll()
    {
        $result = $this->sqlQuery('SELECT * FROM ' . $this->tableName);
        $rows = [];
        while ($record = $result->fetch_object()) {
            array_push($rows, $record);
        }
        return $rows;
    }

    public function getById()
    {

    }

    public function deleteById()
    {

    }


}