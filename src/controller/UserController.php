<?php


class UserController extends GenericController
{

    private $userDao;

    public function __construct($requestObject)
    {
        parent::__construct($requestObject);
        $this->requestMethodsOfResources = array(
            '/users/authentication' => array(HTTP_POST),
            '/users' => array(HTTP_GET, HTTP_POST, HTTP_PUT, HTTP_DELETE)
        );

        //TODO access rights checks to resources - do later

        if ($this->isRequestMethodCorrect() == false) {
            //TODO throw 405 method not allowed
            throw new Exception("405 - method not allowed");
        }

        $this->userDao = new UserInfoDao();
    }

    public function resourceCRUD()
    {
        switch ($this->requestObject->getRequestMethod()) {
            case HTTP_GET:
                if (isset($_GET['id'])) {
                    //get single entity
                    $userId = $_GET['id'];
                    $this->userDao->getById($userId);
                } else {
                    //get all entities
                    
                }
                break;
            case HTTP_POST:
                //create new user -> data in payload
                break;
            case HTTP_PUT:
                //update user -> data in payload
                break;
            case HTTP_DELETE:
                //delete user
                $_GET['id'];
                break;

        }
    }


    function authenticateUser()
    {
        /*
        Check method???
        Decode json
         * */


        //method post
        echo $_GET["login"];
        echo "ahoj zmrde \n";
    }


}