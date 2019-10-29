function getProductsCallback(data, textStatus) {

    response = JSON.parse(data);
    if (response.success === true) {
        displayProducts(response.data);
    } else {
        var x = 10;
    }
}


function getProducts() {
    sendGetRequest("api.php/products", getProductsCallback);
}