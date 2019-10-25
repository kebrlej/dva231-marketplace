<?php


class Response
{
    public $success;
    public $error;
    public $info;
    public $statusCode;
    public $data;


    public function __construct(bool $success, string $info, string $error, int $statusCode, $data)
    {
        $this->success = $success;
        $this->info = $info;
        $this->error = null;
        $this->statusCode = $statusCode;
        $this->data = $data;
    }

    public static function createErrorInstance($info, $error, $statusCode)
    {
        $response = new Response();
        $response->success = false;
        $response->info = $info;
        $response->error = $error;
        $response->statusCode = $statusCode;
        $response->data = null;

        return $response;

    }


}