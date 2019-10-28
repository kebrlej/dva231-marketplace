<?php

abstract class AbstractDto implements IPropertyDescription
{
    protected function validateDataTypes($propertyTypes)
    {
        foreach (array_keys(get_object_vars($this)) as $propertyName) {
            if (!array_key_exists($propertyName, $propertyTypes)) {
                throw new ConversionException("Type not defined for property: " . $propertyName);
                throw new ConversionException("Available property types: ".print_r($propertyTypes));
            }
        }
        return $propertyTypes;
    }

    protected function validateClassTypes($classTypes)
    {
        //todo fix validation to check that every object type has class defined
//        $objectProperties = array_keys(get_object_vars($this));
//        $
//        $variableTypes = array_keys($classTypes);
//        foreach ($variableTypes as $variableType) {
//            if (!array_key_exists($variableType, $objectProperties)) {
//                echo "Property class type definition missing: " . $variableType;
//            }
//        }
        return $classTypes;
    }


    public function loadObjectData($dataHolder)
    {
        foreach (array_keys(get_object_vars($this)) as $propertyName) {
            if (property_exists($dataHolder, $propertyName)) {
                $this->loadPropertyFromDataHolder($dataHolder, $propertyName);
            } else {
                throw new ConversionException( "Missing data for property: " . $propertyName . " of class: ".get_class($this). "</br>");
            }
        }
    }

    /**
     * @param $data
     * @param $propertyName
     */
    public function loadPropertyFromDataHolder($data, $propertyName)
    {
        $dataTypes = $this->getDataTypes();
        $dataType = $dataTypes[$propertyName];
        if ($dataType == DataType::PRIMITIVE
            || $dataType == DataType::PRIMITIVE_ARRAY
            || $dataType == DataType::ENUM
        ) {
            $this->$propertyName = $data->$propertyName;

        } else if ($dataType == DataType::OBJECT_ARRAY) {
            $objectArray = array();
            foreach ($data->$propertyName as $propertyData) {
                array_push($objectArray, $this->createChildObject($data, $propertyName, $propertyData));
            }
            $this->$propertyName = $objectArray;
        } else if ($dataTypes[$propertyName] == DataType::OBJECT) {
            $this->$propertyName = $this->createChildObject($data, $propertyName, $data->$propertyName);
        }else{
            throw new ConversionException("Undefined data type of property: ".$propertyName);
        }
    }

    public function createChildObject($data, $propertyName, $propertyData)
    {
        $classTypes = $this->getClassTypes();
        $newClass = null;
        if (!array_key_exists($propertyName, $classTypes)) {
            throw new ConversionException("Missing class type definition for property: " . $propertyName);
        }else{
            $classType = $classTypes[$propertyName];
            if($classType == ClassTypes::Module){
                $moduleResolver = new ModuleResolver();
                $classType = $moduleResolver->resolveChildClassFromAnswerType($data->type);
            }
            $newClass = new $classType;
            $newClass->loadObjectData($propertyData);
            return $newClass;
        }
    }

}