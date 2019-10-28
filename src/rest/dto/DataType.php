<?php


class DataType extends Enum
{
    const PRIMITIVE = "primitive"; //primitive data type -> integer, boolean, string
    const OBJECT = "object"; // property is some object
    const PRIMITIVE_ARRAY = "primitive_array"; // property is array
    const OBJECT_ARRAY = "object_array"; // property is array
    const ENUM = "enum"; // enum
}