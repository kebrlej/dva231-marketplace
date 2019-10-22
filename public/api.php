<?php

include "../src/includes.php";


$resourcePath = "/";
if (isset($_SERVER['PATH_INFO'])) {
    $resourcePath = $_SERVER['PATH_INFO'];
}

$requestContent = file_get_contents('php://input');


// now we have the path, we want to route to controllers
$userController = new UserController();


$controllers = array(
    "authenticate-user" => function () {
        (new UserController())->authenticateUser();
    }
);

$resolvedFunction = null;
foreach ($controllers as $restUrl => $controllerFunction) {
    if (strpos($resourcePath, $restUrl)) {
        $controllerFunction();
    }
}

if ($resolvedFunction === null) {
    //TODO process the error
    echo " function not found";
}


//echo $requestContent;






