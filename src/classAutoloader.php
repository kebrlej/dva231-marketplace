<?php


/**
 * By registering autoloading functions, we dont have to manually include or require files.
 * PHP will search the autoloader to find classes.
 */
function buildFilePath($className, $classfolder)
{
    return SRC_ROOT_FOLDER . $classfolder . $className . '.php';
}

function requireClassFileIfExists($className, $classFolder)
{
    $filePath = buildFilePath($className, $classFolder);
    if (file_exists($filePath)) {
        require_once $filePath;
    }
}

spl_autoload_register(function ($className) {
    requireClassFileIfExists($className, './rest/dto/');
});

spl_autoload_register(function ($className) {
    requireClassFileIfExists($className, './database/dao/');
});

spl_autoload_register(function ($className) {
    requireClassFileIfExists($className, './database/dbutils/');
});

spl_autoload_register(function ($className) {
    requireClassFileIfExists($className, './rest/');
});

spl_autoload_register(function ($className) {
    requireClassFileIfExists($className, './controller/');
});

spl_autoload_register(function ($className) {
    requireClassFileIfExists($className, './');
});

spl_autoload_register(function ($className) {
    requireClassFileIfExists($className, './utils/');
});



