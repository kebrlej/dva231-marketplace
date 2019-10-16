<?php

require_once 'config.develop.php';


/**
 * By registering autoloading functions, we dont have to manually include or require files.
 * PHP will search the autoloader to find classes.
 */

function autoloadDatabase($className){
    require_once DOCUMENT_ROOT.'/database/'.$className.'.php';
}

function autoloadRestApi($className){
    require_once DOCUMENT_ROOT.'/rest/'.$className.'.php';
}


spl_autoload_register('autoloadDatabase');
//spl_autoload_register('autoloadRestApi');
