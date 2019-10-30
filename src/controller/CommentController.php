<?php


class CommentController extends GenericController
{

    public function __construct($requestObject)
    {
        parent::__construct($requestObject, new CommentDao());

        $this->allowedRequestMethods = array(
            '/comments' => array(HTTP_GET, HTTP_POST, HTTP_DELETE)
        );
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
        $objectAttributes['user_id'] =  $objectAttributes['userId'];
        $objectAttributes['product_id'] = $objectAttributes['productId'];
        unset($objectAttributes['userId']);
        unset($objectAttributes['productId']);
        return $objectAttributes;
    }
}