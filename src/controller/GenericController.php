<?php


abstract class GenericController
{
    protected $requestObject = null;

    protected $requestMethodsOfResources = null;

    public function __construct($requestObject)
    {
        $this->requestObject = $requestObject;
    }

    public abstract function resourceCRUD();

    public function isRequestMethodCorrect()
    {
        if (array_key_exists($this->requestObject->resourceName, $this->requestMethodsOfResources)) {
            $resourceRequestMethod = $this->requestMethodsOfResources[$this->requestObject->resourceName];
            if ($resourceRequestMethod === $this->requestObject->requestMethod) {
                return true;
            } else {
                return false;
            }
        } else {
            throw new Exception("Wrong request method definition in class constructor!!!");
            //TODO throw exception that request method for resource is not defined in constructor
        }
    }

}