<?php


class Response
{
    public $success;
    public $message;
    public $data;


//    public function __construct(bool $success, string $info, string $error, int $statusCode, $data)
//    {
//        $this->success = $success;
//        $this->info = $info;
//        $this->error = null;
//        $this->statusCode = $statusCode;
//        $this->data = $data;
//    }

    public static function errorResponse($errorMessage)
    {
        $response = new Response();
        $response->success = false;
        $response->message = $errorMessage;
        $response->data = null;

        return $response;
    }

    public static function successResponse($data)
    {
        $response = new Response();
        $response->success = true;
        $response->data = $data;

        return $response;
    }

}