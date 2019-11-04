<?php


class CommentDto extends AbstractDto
{
    public $id;
    public $text;
    public $createTime;
    public $userId; // id of comment author
    public $productId;
    public $author;         // username of comment author
    public $replyTo; // id of comment we reply to

    /**
     * CommentDto constructor.
     * @param $id
     * @param $text
     * @param $createTime
     * @param $userId
     * @param $productId
     * @param $author
     * @param $replyTo
     */
    public function __construct($id, $text, $createTime, $userId, $productId, $author, $replyTo)
    {
        $this->id = $id;
        $this->text = $text;
        $this->createTime = $createTime;
        $this->userId = $userId;
        $this->productId = $productId;
        $this->author = $author;
        $this->replyTo = $replyTo;
    }

    public function getRequiredFields()
    {
        return $this->validateDataTypes(array(
            "text" => DataType::PRIMITIVE,
            "createTime" => DataType::PRIMITIVE,
            "userId" => DataType::PRIMITIVE,
            "productId" => DataType::PRIMITIVE,
            "author" => DataType::PRIMITIVE,
            "replyTo" => DataType::PRIMITIVE
        ));
    }

    public function getClassTypes()
    {
        // TODO: Implement getClassTypes() method.
    }
}