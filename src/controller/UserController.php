<?php


class UserController extends GenericController
{

    private $userDao;

    public function __construct($requestObject)
    {
        parent::__construct($requestObject);
        $this->allowedRequestMethods = array(
            '/users/authentication' => array(HTTP_POST),
            '/users' => array(HTTP_GET, HTTP_POST, HTTP_PUT, HTTP_DELETE)
        );

        //TODO access rights checks to resources - do later

        if ($this->isRequestMethodAllowed() == false) {
            //TODO throw 405 method not allowed
            throw new Exception("405 - method not allowed");
        }

        $this->userDao = new UserDao();
    }


    public function resourceCRUD()
    {
        switch ($this->requestObject->getRequestMethod()) {
            case HTTP_GET:
                $this->processGETRequest();
                break;
//            case HTTP_POST:
//                //create new user -> data in payload
//                break;
//            case HTTP_PUT:
//                //update user -> data in payload
//                break;
//            case HTTP_DELETE:
//                //delete user
//                $_GET['id'];
//                break;

        }
    }


    function authenticateUser()
    {
        $data = $this->requestObject->data;
        $login = $data['login'];
        $password = $data['password'];
        echo $login;
        echo $password;
        //method post
    }

    public function processGETRequest(): void
    {
        if (isset($_GET['id'])) {
            //get single entity
            $userId = $_GET['id'];
//                    echo json_decode($this->userDao->getById($userId));
        } else {
            //get all entities
            $this->userDao->getAll();
        }
    }


}