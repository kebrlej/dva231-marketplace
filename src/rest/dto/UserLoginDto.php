<?php


class UserLoginDto extends AbstractDto
{
    public $email;
    public $password;

    public function getDataTypes()
    {
        return $this->validateDataTypes(array(
            "email" => DataType::PRIMITIVE,
            "password" => DataType::PRIMITIVE
        ));
    }

    public function getClassTypes()
    {
        // TODO: Implement getClassTypes() method.
    }
}