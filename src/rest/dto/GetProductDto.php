<?php


class GetProductDto extends AbstractDto
{

    public $id;
    public $title;
    public $price;
    public $location;
    public $postDate;
    public $state;
    public $description;
    public $category;
    public $images; // array of images

    public function getDataTypes()
    {
        // TODO: Implement getDataTypes() method.
    }

    public function getClassTypes()
    {
        // TODO: Implement getClassTypes() method.
    }
}