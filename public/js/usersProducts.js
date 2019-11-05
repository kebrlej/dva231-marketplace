function getProductsOfUser() {
    sendGetRequest("api.php/products", function getProductsCallback(data, textStatus) {
        response = JSON.parse(data);
        if (response.success === true) {
            displayUsersProducts(response.data);
            setValueInDomStorage("products", response.data);
        } else {
            var x = 10;
        }
    });
}

function displayUsersProducts(products) {
    var usersProducts = products.filter(function (product) {
        return product.userId == getFromLocalStorage("userId");
    });

    if (usersProducts !== undefined && usersProducts.length == 0) {
        document.getElementById("dummyTextToLoadTheProducts2").innerHTML = "No results found.";
    } else {
        usersProducts.forEach(function(product){
            if(product.state === 'VALID') {
                document.getElementById("dummyTextToLoadTheProducts2").innerHTML += buildProductCard(product);
            }

        });
    }
}



