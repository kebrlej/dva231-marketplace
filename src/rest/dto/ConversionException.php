<?php

/**
 * Created by Jan Kebrle.
 * Date: 21.05.2017
 */
class ConversionException extends Exception
{
    public function __construct($message, $code = 0, Exception $previous = null) {
        parent::__construct($message, $code, $previous);
    }
}