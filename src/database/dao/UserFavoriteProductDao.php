<?php


class UserFavoriteProductDao extends GenericDao
{
    public function __construct()
    {
        parent::__construct("user_favorite_product");
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