<?php


class ProductDao extends AbstractDao
{
    public function __construct()
    {
        parent::__construct("product");
    }

    public function constructDTOFromSingleResult($result)
    {
        return new GetProductDto(
            $result['id'],
            $result['title'],
            $result['price'],
            $result['location'],
            $result['post_date'],
            $result['state'],
            $result['description'],
            $result['category']
        );
    }

    public function constructDTOArrayFromMultipleResults($resultArray)
    {
        $dtoArray = [];
        foreach ($resultArray as $result) {
            array_push($dtoArray, $this->constructDTOFromSingleResult($result));
        }
        return $dtoArray;
    }
}