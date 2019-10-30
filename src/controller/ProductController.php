<?php


class ProductController extends GenericController
{

    public function __construct($requestObject)
    {
        parent::__construct($requestObject, new ProductDao());
        $this->allowedRequestMethods = array(
            '/products' => array(HTTP_GET, HTTP_POST, HTTP_PUT, HTTP_DELETE)
        );

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
                $this->handleDefaultPOST();
                break;
//            case HTTP_PUT:
//                //update user -> data in payload
//                break;
            case HTTP_DELETE:
                $this->handleDefaultDELETE();
                break;
        }
    }

    public function prepareDataForInsert($data)
    {
        $objectAttributes = (array)$data;
        $objectAttributes['user_id'] = $objectAttributes['userId'];
        unset($objectAttributes['userId']);
        return $objectAttributes;
    }
}