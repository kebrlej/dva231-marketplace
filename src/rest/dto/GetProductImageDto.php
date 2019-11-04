<?php


class GetProductImageDto
{
    public $id;
    public $name;
    public $data;

    /**
     * ProductPictureDto constructor.
     * @param $id
     * @param $name
     * @param $data
     */
    public function __construct($id, $name, $data)
    {
        $this->id = $id;
        $this->name = $name;
        $this->data = $data;
    }
}