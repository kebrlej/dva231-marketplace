<?php


class ProductController extends GenericController
{

    public function __construct($requestObject)
    {
        parent::__construct($requestObject, new ProductDao());
        $this->allowedRequestMethods = array(
            '/products' => array(HTTP_GET, HTTP_POST, HTTP_PUT, HTTP_DELETE),
            '/products/productstate'=> array(HTTP_POST)
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
                $this->handleProductPOST();
                break;
//            case HTTP_PUT:
//                //update user -> data in payload
//                break;
            case HTTP_DELETE:
                $this->handleDefaultDELETE();
                break;
        }
    }

    public function handleProductPOST(){
        $data = $this->requestObject->data;

//        echo json_encode($data);
        //prepare images
        $imageDtos = array();
        foreach($data->images as $image){
            $imageDto = new PostProductImageDto();
            $imageDto->loadObjectData($image);
            array_push($imageDtos,$imageDto);
        };
        $preparedData = $this->prepareDataForInsert($data);

        $result = $this->dataAccessObject->insertIntoTable($preparedData);


        if($this->dataAccessObject->getAffectedRows() == 1 && $result == 1){
            //product saved correctly, save also images
            $productImageDao = new ProductImageDao();

            foreach($imageDtos as $imageDto){
                $imageValuesArray = (array)$imageDto;
                $imageValuesArray["product_id"] = $this->dataAccessObject->getLastInsertId();
                $productImageDao->insertIntoTable($imageValuesArray);
            }
            $this->sendResponse(Response::successResponse(null));
        }else{
            $this->sendResponse(Response::errorResponse("Insert failed"));
        }
    }

    public function prepareDataForInsert($data)
    {
        $objectAttributes = (array)$data;
        unset($objectAttributes['images']);
        $objectAttributes['user_id'] = $objectAttributes['userId'];
        unset($objectAttributes['userId']);

        $objectAttributes['state'] = "VALID";

        return $objectAttributes;
    }

    function productCreate()
    {
        $createProductDto = new CreateProductDto();
        $createProductDto->loadObjectData($this->requestObject->data);

        try{
            $productDto = $this->dataAccessObject->insertIntoTable((array)(prepareDataForInsert($createProductDto)));
            $this->sendResponse(Response::successResponse($productDto));
        }catch(Exception $e){
            $this->sendResponse(Response::errorResponse($e->getMessage()));
        }
    }

    public function changeProductState()
    {
        $newProductStateDto = new NewProductStateDto();
        $newProductStateDto->loadObjectData($this->requestObject->data);

        $this->dataAccessObject->updateProductState($newProductStateDto->state, $newProductStateDto->productId);




    }
}