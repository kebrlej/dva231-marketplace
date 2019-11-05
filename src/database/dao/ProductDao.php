<?php


class ProductDao extends AbstractDao
{
    public function __construct()
    {
        parent::__construct("product");
    }

    public function constructDTOFromSingleResult($result)
    {
        $productDto = new GetProductDto(
            $result['id'],
            $result['title'],
            $result['price'],
            $result['location'],
            $result['post_date'],
            $result['state'],
            $result['description'],
            $result['category'],
            $result['user_id'],
            $result['latitude'],
            $result['longtitude'],
            $result['county']
        );
        $productDto->comments = [];

        $productImageDao = new ProductImageDao();
        $productDto->images = $productImageDao->selectMultipleWhereConditions(array('product_id' => $productDto->id));

        //load product creater
        $userDao = new UserDao();
        $productDto->user= $userDao->getById($productDto->userId);

        //todo load product comments here
        return $productDto;
    }

    public function updateProductState($newState, $productId){
//        UPDATE product SET state='BLOCKED' WHERE id=1;
        $updateQuery = "UPDATE ".$this->tableName." SET state='{$newState}' WHERE id='{$productId}'";
        return $this->executeSqlQuery($updateQuery);
    }

}