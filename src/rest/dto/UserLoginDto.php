<?php


class UserLoginDto extends AbstractDto
{
    public $username;
    public $password;

    public function getDataTypes()
    {
        return $this->validateDataTypes(array(
            "username" => DataType::PRIMITIVE,
            "password" => DataType::PRIMITIVE
        ));
    }

    public function getClassTypes()
    {
        // TODO: Implement getClassTypes() method.
    }
}