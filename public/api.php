<?php

require "../src/includes.php";

function resolveRequestMethod($requestMethod)
{
    switch ($requestMethod) {
        case HTTP_GET:
            return HTTP_GET;
        case HTTP_POST:
            return HTTP_POST;
        default:
            die("unable to resolve HTTP request type");
    }
}

function constructRequestObject()
{
    //TODO check request params and throw exceptions, especially of PATH_INFO is set
    $urlParts = explode("/", $_SERVER['PATH_INFO']);
    array_shift($urlParts);

    return new Request(
        "/" . implode("/",$urlParts),
        resolveRequestMethod($_SERVER['REQUEST_METHOD']),
        $_SERVER['PATH_INFO'],
        file_get_contents('php://input')
    );

}


$request = constructRequestObject();

//TODO try catch for exceptions
switch ($request->resourceName) {
    case '/users':
        (new UserController($request))->resourceCRUD();
        break;
    case '/users/authentication':
        (new UserController($request))->authenticateUser();
        break;
    default: throw new Exception("Resource does not exist");//TODO Return 404 - resource doesnt exist
}








