<?php


abstract class GenericController
{
    protected $requestObject = null;

    protected $allowedRequestMethods = null;

    public function __construct($requestObject)
    {
        $this->requestObject = $requestObject;
    }

    public abstract function resourceCRUD();

    public function isRequestMethodCorrect()
    {
        if (array_key_exists($this->requestObject->resourceName, $this->allowedRequestMethods)) {
            $allowedResourceHttpMethods = $this->allowedRequestMethods[$this->requestObject->resourceName];
            if (in_array($this->requestObject->requestMethod, $allowedResourceHttpMethods)) {
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