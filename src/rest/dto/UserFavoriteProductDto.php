<?php


class UserFavoriteProductDto extends AbstractDto
{
    public $id;
    public $userId;
    public $productId;

    /**
     * UserFavoriteProductDto constructor.
     * @param $id
     * @param $userId
     * @param $productId
     */
    public function __construct($id, $userId, $productId)
    {
        $this->id = $id;
        $this->userId = $userId;
        $this->productId = $productId;
    }

    public function getRequiredFields()
    {
        return $this->validateDataTypes(array(
            "userId" => DataType::PRIMITIVE,
            "productId" => DataType::PRIMITIVE
        ));
    }

    public function getClassTypes()
    {
        // TODO: Implement getClassTypes() method.
    }
}