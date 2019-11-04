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
    public $latitude;
    public $longtitude;

    //foreign key properties
    public $userId;
    public $images; // array of images
    public $comments; // array of comments

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
     * @param $userId
     * @param $images
     * @param null $comments
     */
    public function __construct($id, $title, $price, $location, $postDate, $state, $description, $category, $userId, $latitude, $longtitude, $images = null, $comments = null)
    {
        $this->id = $id;
        $this->title = $title;
        $this->price = $price;
        $this->location = $location;
        $this->postDate = $postDate;
        $this->state = $state;
        $this->description = $description;
        $this->category = $category;
        $this->latitude = $latitude;
        $this->longtitude = $longtitude;

        $this->userId = $userId;
        $this->images = $images;
        $this->comments = $comments;
    }

}