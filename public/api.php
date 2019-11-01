<?php

require "../src/includes.php";

function resolveRequestMethod($requestMethod)
{
    switch ($requestMethod) {
        case HTTP_GET:
            return HTTP_GET;
        case HTTP_POST:
            return HTTP_POST;
        case HTTP_DELETE:
            return HTTP_DELETE;
        case HTTP_PUT:
            return HTTP_PUT;
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
        "/" . implode("/", $urlParts),
        resolveRequestMethod($_SERVER['REQUEST_METHOD']),
        $_SERVER['PATH_INFO'],
        file_get_contents('php://input')
    );

}


$request = constructRequestObject();

//TODO try catch for exceptions
switch ($request->resourceName) {
    case '/users':
        (new UserController($request))->defaultRequestRouter();
        break;
    case '/users/login':
        (new UserController($request))->loginUser();
        break;
    case '/users/logout':
        (new UserController($request))->logoutUser();
        break;
    case '/users/register':
        (new UserController($request))->registerUser();
        break;
    case "/products":
        (new ProductController($request))->defaultRequestRouter();
        break;
    case '/createproduct':
        (new ProductController($request))->productCreate();
        break;
    case "/comments":
        (new CommentController($request))->defaultRequestRouter();
        break;
    default:
        throw new Exception("Resource does not exist");//TODO Return 404 - resource doesnt exist
}








