<?php


class UserDao extends AbstractDao
{

    public function __construct()
    {
        parent::__construct("user");
    }


    public function constructDTOFromSingleResult($result)
    {
        return new UserDataDto($result['id'], $result['username'], $result['email'], $result['create_time']);
    }
}