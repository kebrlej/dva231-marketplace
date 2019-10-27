<?php


abstract class GenericController
{
    protected $requestObject = null;
    protected $allowedRequestMethods = null;

    protected $dao = null;

    public function __construct($requestObject)
    {
        $this->requestObject = $requestObject;
    }

    public abstract function resourceCRUD();

    public function processDefaultGETRequest(): void
    {
        if (isset($_GET['id'])) {
            //get single entity
            $id = $_GET['id'];

            $object = $this->dao->getById($id);
            echo json_encode(Response::createSuccessResponse($object));

        } else {
            //get all entities
            $objectArray = $this->dao->getAll();
            echo json_encode(Response::createSuccessResponse($objectArray));
        }
    }

    public function processDELETERequest()
    {
        if (isset($_GET['id'])) {
            $id = $_GET['id'];
            $result = $this->dao->deleteById($id);
            if ($this->dao->getAffectedRows() == 1 && $result == 1) {
                $this->sendResponse(Response::createSuccessResponse(null));
            } else {
                $this->sendResponse(Response::createErrorResponse("Affected rows: ".$this->dao->getAffectedRows()));
            }
        } else {
            $this->sendResponse(Response::createErrorResponse("id of object to delete not set"));
        }
    }

    


    public function sendResponse(Response $response)
    {
        //TODO set headers, HTTP codes
        echo json_encode($response);
    }


    public
    function isRequestMethodAllowed()
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