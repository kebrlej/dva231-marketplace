function loadUserFavoriteProducts() {
    var userId = getFromLocalStorage("userId");
    sendGetRequest("api.php/userfavoriteproducts?userid=" + userId, function (data, textStatus) {
        var response = JSON.parse(data);
        if (response.success === true) {
            setUserFavoriteProductsInLocalStorage(response.data);
        } else {
            var x = 10;
        }
    });
}

function addProductToUserFavorites(productId) {
    var userId = getFromLocalStorage("userId");
    var payload = {
        "userId": userId,
        "productId": productId
    };

    sendPostRequest("api.php/userfavoriteproducts", payload, function (data, text) {
        var response = JSON.parse(data);
        if (response.success === true) {
            //reload user favorites from server on successful delete
            loadUserFavoriteProducts();
        }
    });
}

function displayFavoriteProducts() {
    sendGetRequest("api.php/products", function getProductsCallback(data, textStatus) {
        response = JSON.parse(data);
        var favoriteProducts = getUserFavoriteProductsFromLocalStorage(); //TODO delete
        if (response.success === true) {
            setValueInDomStorage("products", response.data);
            response.data.forEach(function (product) {
                if (product.state === "VALID" && isProductUsersFavorite(product.id)) {
                    addProductOverviewToCurrentPage(product);
                }
            });
        } else {
            var x = 10;
        }
    });
}


function deleteProductFromUserFavorites(productId) {
    var favoriteProductObjectId = getFavoriteProductObjectIdByProductId(productId);
    sendDeleteRequest('api.php/userfavoriteproducts?id=' + favoriteProductObjectId, function (data) {
        var response = JSON.parse(data);
        if(response.success){
            loadUserFavoriteProducts();
        }else{
            alert("Deletion of product from users favorites failed.");
        }
    });
}


