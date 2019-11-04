<?php


class CommentDao extends AbstractDao
{

    public function __construct()
    {
        parent::__construct("comment");
    }

    public function constructDTOFromSingleResult($result)
    {
//        echo json_encode($result);
        return new CommentDto(
            $result['id'],
            $result['text'],
            $result['create_time'],
            $result['user_id'],
            $result['product_id'],
            $result['author'],
            $result['reply_to_comment_id']
        );
    }
}