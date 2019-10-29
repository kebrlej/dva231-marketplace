<?php


class ProductController extends GenericController
{

    public function __construct($requestObject)
    {
        parent::__construct($requestObject);
        $this->allowedRequestMethods = array(
            '/products' => array(HTTP_GET)
        );

        if ($this->isRequestMethodAllowed() == false) {
            //TODO throw 405 method not allowed
            throw new Exception("405 - method not allowed");
        }

    }

    public function getFakeProducts()
    {
        $product = new GetProductDto();
        $product->id = 1;
        $product->title = "Test product";
        $product->price = 300;
        $product->location = "Vasteras";
        $product->postDate = "today";
        $product->state = "new";
        $product->description = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sed odio morbi quis commodo odio. Dictumst vestibulum rhoncus est pellentesque elit ullamcorper. Nunc sed blandit libero volutpat sed. Et malesuada fames ac turpis egestas sed tempus. Mauris nunc congue nisi vitae suscipit tellus mauris a. Morbi enim nunc faucibus a pellentesque sit amet porttitor eget. Non nisi est sit amet facilisis magna. Rhoncus urna neque viverra justo nec ultrices. Ultricies leo integer malesuada nunc vel risus commodo viverra maecenas. Et netus et malesuada fames ac turpis egestas. At in tellus integer feugiat scelerisque varius morbi enim nunc. Morbi tincidunt ornare massa eget egestas purus. Pulvinar mattis nunc sed blandit libero volutpat. Nisi lacus sed viverra tellus in hac habitasse.";
        $product->category = "Sport";

        $productArray = array($product,$product,$product);

        $this->sendResponse(Response::successResponse($productArray));
    }


    public function resourceCRUD()
    {
        switch ($this->requestObject->getRequestMethod()) {
            case HTTP_GET:
                $this->getFakeProducts();
                break;
//            case HTTP_POST:
//                //create new user -> data in payload
//                break;
//            case HTTP_PUT:
//                //update user -> data in payload
//                break;
            case HTTP_DELETE:
                //delete user
                $this->processDELETERequest();
                break;
        }

        // TODO: Implement resourceCRUD() method.
    }
}