<?php


class NewProductStateDto extends AbstractDto
{
    public $state;
    public $productId;
    public function getRequiredFields()
    {
        return $this->validateDataTypes(array(
            'state'=> DataType::PRIMITIVE,
            'productId'=> DataType::PRIMITIVE
        ));
    }

    public function getClassTypes()
    {
        // TODO: Implement getClassTypes() method.
    }
}