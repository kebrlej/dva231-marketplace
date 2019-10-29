<?php


class GetProductDto
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

    /**
     * GetProductDto constructor.
     * @param $id
     * @param $title
     * @param $price
     * @param $location
     * @param $postDate
     * @param $state
     * @param $description
     * @param $category
     * @param $images
     */
    public function __construct($id, $title, $price, $location, $postDate, $state, $description, $category, $images = null)
    {
        $this->id = $id;
        $this->title = $title;
        $this->price = $price;
        $this->location = $location;
        $this->postDate = $postDate;
        $this->state = $state;
        $this->description = $description;
        $this->category = $category;
        $this->images = $images;
    }

}