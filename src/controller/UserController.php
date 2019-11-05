<?php


class UserController extends GenericController
{

    public function __construct($requestObject)
    {
        parent::__construct($requestObject, new UserDao());

        $this->allowedRequestMethods = array(
            '/users/login' => array(HTTP_POST),
            '/users/logout' => array(HTTP_POST),
            '/users' => array(HTTP_GET, HTTP_POST, HTTP_PUT, HTTP_DELETE),
            '/users/register' => array(HTTP_POST)
        );

        //TODO access rights checks to resources - do later
        if ($this->isRequestMethodAllowed() == false) {
            //TODO throw 405 method not allowed
            throw new Exception("405 - method not allowed");
        }

    }


    public function defaultRequestRouter()
    {
        switch ($this->requestObject->getRequestMethod()) {
            case HTTP_GET:
                $this->handleDefaultGET();
                break;
            case HTTP_POST:
                //create new user -> data in payload
                $this->handleDefaultPOST();
                break;
//            case HTTP_PUT:
//                //update user -> data in payload
//                break;
            case HTTP_DELETE:
                //delete user
                $this->handleDefaultDELETE();
                break;
        }
    }


    function loginUser()
    {
        $userLoginDto = new UserLoginDto();

        //validates that both username and password are set
        $userLoginDto->loadObjectData($this->requestObject->data);

        $result = $this->dataAccessObject->selectOneWhereConditions((array)$userLoginDto);
        if ($result == null) {
            $this->sendResponse(Response::errorResponse("wrong user email or password"));
        } else {
            $userDto = $this->dataAccessObject->constructDTOFromSingleResult($result);
            try{
                SessionManagement::setUserRole( new UserRole($result['role']));
                SessionManagement::storeUserDataToSession($userDto);

                $this->sendResponse(Response::successResponse($userDto));
            }catch(Exception $e){
                $this->sendResponse(Response::errorResponse($e->getMessage()));
            }

        }

    }

    function logoutUser()
    {
        SessionManagement::logoutUser();
        $this->sendResponse(Response::successResponse(null));
    }


    public function prepareDataForInsert($data)
    {
        //no preparations needed :-)
        $array = (array)$data;
        $array['role']="USER";
        return $array;
    }

    function registerUser()
    {
        $userRegisterDto = new UserRegisterDto();
        $userRegisterDto->loadObjectData($this->requestObject->data);

        try{
            $userDto = $this->dataAccessObject->insertIntoTable((array)$userRegisterDto);
            $this->sendResponse(Response::successResponse($userDto));
        }catch(Exception $e){
            $this->sendResponse(Response::errorResponse($e->getMessage()));
        }
    }
}