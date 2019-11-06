<?php


class UserFavoriteProductController extends GenericController
{

    public function __construct($requestObject)
    {
        parent::__construct($requestObject, new ProductDao());
        $this->allowedRequestMethods = array(
            '/userfavoriteproducts' => array(HTTP_GET, HTTP_POST, HTTP_DELETE)
        );

        if ($this->isRequestMethodAllowed() == false) {
            //TODO throw 405 method not allowed
            throw new Exception("405 - method not allowed");
        }
    }

    public function defaultRequestRouter()
    {
        // TODO: Implement defaultRequestRouter() method.
    }

    public function prepareDataForInsert($data)
    {
        // TODO: Implement prepareDataForInsert() method.
    }
}