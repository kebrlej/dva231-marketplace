<?php


class CreateProductDto extends AbstractDto
{
    public $title;
    public $price;
    public $location;
    public $latitude;
    public $longtitude;
    public $description;
    public $category;
    public $userId;
    public $county;
    public $city;


    public function getRequiredFields()
    {
        return $this->validateDataTypes(array(
            "title" => DataType::PRIMITIVE,
            "price" => DataType::PRIMITIVE,
            "location" => DataType::PRIMITIVE,
            "description" => DataType::PRIMITIVE,
            "category" => DataType::PRIMITIVE,
            "userId" => DataType::PRIMITIVE,
            "longtitude" => DataType::PRIMITIVE,
            "latitude" => DataType::PRIMITIVE,
            "userId" => DataType::PRIMITIVE,
            "county" => DataType::PRIMITIVE,
            "city" => DataType::PRIMITIVE
        ));
    }

    public function getClassTypes()
    {
        // TODO: Implement getClassTypes() method.
    }
}