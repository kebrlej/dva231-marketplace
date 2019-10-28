<?php


class UserController extends GenericController
{

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

        $this->dao = new UserDao();
    }


    public function resourceCRUD()
    {
        switch ($this->requestObject->getRequestMethod()) {
            case HTTP_GET:
                $this->processDefaultGETRequest();
                break;
//            case HTTP_POST:
//                //create new user -> data in payload
//                break;
//            case HTTP_PUT:
//                //update user -> data in payload
//                break;
            case HTTP_DELETE:
                //delete user
                $this->processDELETERequest();
                break;
        }
    }


    function authenticateUser()
    {
        $userLoginDto = new UserLoginDto();
        echo $this->requestObject->data['email'];
        $userLoginDto->loadObjectData($this->requestObject->data);


        //method post
    }


}