<?php


abstract class GenericController
{
    protected $requestObject = null;
    protected $allowedRequestMethods = null;

    protected $dataAccessObject = null;

    public function __construct($requestObject)
    {
        $this->requestObject = $requestObject;
    }

    public abstract function defaultRequestRouter();

    public function handleDefaultGET(): void
    {
        //todo check returned rows and handle error
        if (isset($_GET['id'])) {
            //get single entity
            $id = $_GET['id'];

            $dbRow = $this->dataAccessObject->getById($id);
            $userDto = $this->dataAccessObject->constructDTOFromSingleResult($dbRow);
            $this->sendResponse(Response::successResponse($userDto));
        } else {
            //get all entities
            $objectArray = $this->dataAccessObject->getAll();

            $this->sendResponse(Response::successResponse($objectArray));
        }
    }

    public function handleDefaultPOST()
    {
        $data = $this->requestObject->data;

        $result = $this->dataAccessObject->insertIntoTable((array)$data);

        if($this->dataAccessObject->getAffectedRows() == 1 && $result == 1){
            $this->sendResponse(Response::successResponse(null));
        }else{
            $this->sendResponse(Response::errorResponse("Insert failed"));
        }
    }

    public function handleDefaultDELETE()
    {
        if (isset($_GET['id'])) {
            $id = $_GET['id'];
            $result = $this->dataAccessObject->deleteById($id);
            if ($this->dataAccessObject->getAffectedRows() == 1 && $result == 1) {
                $this->sendResponse(Response::successResponse(null));
            } else {
                $this->sendResponse(Response::errorResponse("Affected rows: " . $this->dataAccessObject->getAffectedRows()));
            }
        } else {
            $this->sendResponse(Response::errorResponse("id of object to delete not set"));
        }
    }


    public function sendResponse(Response $response)
    {
        //TODO set headers, HTTP codes
        echo json_encode($response);
    }


    public function isRequestMethodAllowed()
    {
        if (array_key_exists($this->requestObject->resourceName, $this->allowedRequestMethods)) {
            $allowedResourceHttpMethods = $this->allowedRequestMethods[$this->requestObject->resourceName];
            if (in_array($this->requestObject->requestMethod, $allowedResourceHttpMethods)) {
                return true;
            } else {
                return false;
            }
        } else {
            throw new Exception("Invalid request method definition in class constructor!!!");
            //TODO throw exception that request method for resource is not defined in constructor
        }
    }

}