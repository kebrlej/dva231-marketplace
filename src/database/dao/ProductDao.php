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
            $result['county'],
            $result['city']
        );
        $productDto->comments = [];

        $productImageDao = new ProductImageDao();
        $productDto->images = $productImageDao->selectMultipleWhereConditions(array('product_id' => $productDto->id));

        // todo load product images here

        return $productDto;
    }

}