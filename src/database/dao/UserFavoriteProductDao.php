<?php


class UserFavoriteProductDao extends AbstractDao
{
    public function __construct()
    {
        parent::__construct("user_favorite_product");
    }

    public function constructDTOFromSingleResult($result)
    {
        // TODO: Implement constructDTOFromSingleResult() method.
    }

    public function constructDTOArrayFromResults($resultArray)
    {
        // TODO: Implement constructDTOArrayFromMultipleResults() method.
    }
}