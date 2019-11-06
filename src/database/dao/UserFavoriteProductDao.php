<?php


class UserFavoriteProductDao extends AbstractDao
{
    public function __construct()
    {
        parent::__construct("user_favorite_product");
    }

    public function constructDTOFromSingleResult($result)
    {
        $userFavoriteProductDto = new UserFavoriteProductDto($result["id"], $result["user_id"], $result["product_id"]);
        return $userFavoriteProductDto;
    }

}