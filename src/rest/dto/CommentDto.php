<?php


class CommentDto extends AbstractDto
{
    public $id;
    public $text;
    public $createTime;
    public $authorId;         // id of comment author
    public $author;         // username of comment author
    public $replyToComment; // id of comment we reply to

    /**
     * CommentDto constructor.
     * @param $id
     * @param $text
     * @param $createTime
     * @param $authorId
     * @param $author
     * @param $replyToComment
     */
    public function __construct($id, $text, $createTime, $authorId, $author, $replyToComment)
    {
        $this->id = $id;
        $this->text = $text;
        $this->createTime = $createTime;
        $this->authorId = $authorId;
        $this->author = $author;
        $this->replyToComment = $replyToComment;
    }


    public function getRequiredFields()
    {
        return $this->validateDataTypes(array(
            "text" => DataType::PRIMITIVE,
            "createTime" => DataType::PRIMITIVE,
            "authorId" => DataType::PRIMITIVE,
            "author" => DataType::PRIMITIVE,
            "replyToComment"=>DataType::PRIMITIVE
        ));
    }

    public function getClassTypes()
    {
        // TODO: Implement getClassTypes() method.
    }
}