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


    private function loadProductComments($productId)
    {
        $commentDao = new CommentDao();
        $commentRows = $commentDao->selectMultipleWhereConditions(array('product_id' => $productId));
//        echo json_encode($commentRows);
        $commentDtos = $commentDao->constructDTOArrayFromResults($commentRows);
        return $commentDtos;
    }

    public function defaultRequestRouter()
    {
        switch ($this->requestObject->getRequestMethod()) {
            case HTTP_GET:
                if (isset($_GET['id'])) {
                    //get single entity
                    $dbRow = $this->dataAccessObject->getById($_GET['id']);
                    $productDto = $this->dataAccessObject->constructDTOFromSingleResult($dbRow);

                    $productDto->comments = $this->loadProductComments($dbRow['id']);

                    $this->sendResponse(Response::successResponse($productDto));
                } else {
                    $this->handleDefaultGET();
                }
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