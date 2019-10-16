<?php

function autoloadDatabase($class_name){
    $path = DOCUMENT_ROOT.'/database/';
    $file_name = $class_name . '.php';
    echo $path.$class_name.'.php';
    require_once $path.$class_name.'.php';
}

spl_autoload_register('autoloadDatabase');