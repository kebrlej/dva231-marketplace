<?php


class BaseDao extends Connection
{
    private $tableName;

    public function __construct($tableName)
    {
        $this->tableName = $tableName;
        parent::__construct();
    }

    /**
     * Returns all rows from a table specified by a child DAO class.
     *
     * @return array
     */
    public function getAll()
    {
        //TODO catch exception

        $query = 'SELECT * FROM ' . $this->tableName;

        $result = $this->selectSqlQuery($query);
        $rows = [];
        while ($record = $result->fetch_assoc()) {
            array_push($rows, $record);
        }
        return $rows;
    }

    /**
     * Finds object by id in table specified by a child DAO class.
     * Returned value has to be null checked.
     *
     * @param $id
     * @return object or NULL
     * @throws Exception
     */
    public function getById($id)
    {
        //todo catch exceptions

        $query = "SELECT * FROM ".$this->tableName." WHERE id='{$id}'";
        $result = $this->selectSqlQuery($query);
        return $result->fetch_assoc();
    }

    public function deleteById()
    {

    }




}