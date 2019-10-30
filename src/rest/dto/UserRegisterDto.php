<?php


class UserRegisterDto extends AbstractDto
{
    public $username;
    public $email;
    public $password;

    public function getRequiredFields()
    {
        return $this->validateDataTypes(array(
            "username" => DataType::PRIMITIVE,
            "email" => DataType::PRIMITIVE,
            "password" => DataType::PRIMITIVE
        ));
    }

    public function getClassTypes()
    {
        // TODO: Implement getClassTypes() method.
    }
}