<?php


abstract class GenericDao extends Connection
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

    public function selectWhereConditions($paramArray)
    {
        $query = "SELECT * FROM " . $this->tableName . " WHERE ";

        $whereParts = array();
        foreach ($paramArray as $key => $value) {
            array_push($whereParts, " {$key}='{$value}' ");
        }

        $whereCondition = implode(" AND ", $whereParts);

        $query = $query . $whereCondition;
        $result = $this->selectSqlQuery($query);
        return $result->fetch_assoc();
    }

    public abstract function constructDTOFromSingleResult($result);

    public abstract function constructDTOArrayFromMultipleResults($resultArray);
}