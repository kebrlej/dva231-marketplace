<?php


class PostProductImageDto extends AbstractDto
{
    public $name;
    public $data;

    public function getRequiredFields()
    {
        return $this->validateDataTypes(array(
            "name" => DataType::PRIMITIVE,
            "data" => DataType::PRIMITIVE
        ));
    }

    public function getClassTypes()
    {
        // TODO: Implement getClassTypes() method.
    }
}