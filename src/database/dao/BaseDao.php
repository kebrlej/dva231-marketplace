<?php


class BaseDao extends Connection implements IBaseSqlOperations
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
     * @throws Exception
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
     * @return array|null
     * @throws Exception
     */
    public function getById($id)
    {
        //todo catch exceptions

        $query = "SELECT * FROM " . $this->tableName . " WHERE id='{$id}'";
        $result = $this->selectSqlQuery($query);
        return $result->fetch_assoc();
    }

    public function deleteById($id)
    {
        $query = "DELETE FROM " . $this->tableName . " WHERE id='{$id}'";
        $result = $this->selectSqlQuery($query);

        return $result;
    }


}