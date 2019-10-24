<?php


class Request
{
    public $resourceName; //e.g.: /users/authentication
    public $requestMethod; // GET or POST
    public $fullPath; //e.g. /user/authenticate-user
    public $data; //raw json text

    public function __construct($resourceName,
                                $requestMethod,
                                $fullPath,
                                $payload)
    {
        $this->resourceName = $resourceName;
        $this->requestMethod = $requestMethod;
        $this->fullPath = $fullPath;
        $this->data = $payload;

        if ($this->requestMethod === HTTP_POST) {
            $decodedJson = json_decode($payload, true);
            if ($decodedJson === NULL) {
                throw new Exception("Missing request body");
            } else {
                $this->data = $decodedJson;
            }
        }
    }

    public function getRequestMethod(){
        return $this->requestMethod;
    }


}