<?php


class CommentDao extends GenericDao
{

    public function __construct()
    {
        parent::__construct("comment");
    }

    public function constructDTOFromSingleResult($result)
    {
        // TODO: Implement constructDTOFromSingleResult() method.
    }

    public function constructDTOArrayFromMultipleResults($resultArray)
    {
        // TODO: Implement constructDTOArrayFromMultipleResults() method.
    }
}