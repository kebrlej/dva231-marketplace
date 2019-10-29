<?php


class ProductImageDao extends AbstractDao
{
    public function __construct()
    {
        parent::__construct("product_image");
    }

    public function constructDTOFromSingleResult($result)
    {
        // TODO: Implement constructDTOFromSingleResult() method.
    }

    public function constructDTOArrayFromMultipleResults($resultArray)
    {
        // TODO: Implement constructDTOArrayFromMultipleResults() method.
    }
}