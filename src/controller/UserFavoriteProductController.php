<?php


class UserFavoriteProductController extends GenericController
{

    public function __construct($requestObject)
    {
        parent::__construct($requestObject, new UserFavoriteProductDao());
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
        switch ($this->requestObject->getRequestMethod()) {
            case HTTP_GET:
                if (isset($_GET['userid'])) {
                    $userId = $_GET['userid'];
                    $results = $this->dataAccessObject->selectMultipleWhereConditions(array('user_id' => $userId));
                    $favoritesDtoArray = $this->dataAccessObject->constructDTOArrayFromResults($results);
                    $this->sendResponse(Response::successResponse($favoritesDtoArray));
                } else {
                    $this->sendResponse(Response::errorResponse("user id not set in url params."));
                }
                break;
            case HTTP_POST:
                $this->handleDefaultPOST();

                break;
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

        $objectAttributes['product_id'] = $objectAttributes['productId'];
        unset($objectAttributes['productId']);
        unset($objectAttributes['id']);

        return $objectAttributes;
    }
}