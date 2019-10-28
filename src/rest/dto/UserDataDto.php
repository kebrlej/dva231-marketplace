<?php


class UserDataDto
{
    public $id;
    public $username;
    public $email;
    public $created;

    public function __construct($id, $username, $email, $created)
    {
        $this->id = $id;
        $this->username = $username;
        $this->email = $email;
        $this->created = $created;
    }

    //TODO
    //public $profileImage; // profile image object
    //public $userFavoriteProducts; //array of user favorite products objects
    //public $userComments; //array of comment objects

}