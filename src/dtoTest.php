<?php

include "includes.php";


function loadTestFile($filename){
    return json_decode(file_get_contents($filename));
}


$userDto = new UserLoginDto();
$userDto->loadObjectData(loadTestFile("./test/test_json/userLoginDto.json"));

