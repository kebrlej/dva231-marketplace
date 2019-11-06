function saveToLocalStorage(key, value) {
    window.localStorage.setItem(key, value);
}

function getFromLocalStorage(key) {
    var value = window.localStorage.getItem(key);
    return value;
}

function isUserAdmin() {
    var role = window.localStorage.getItem('role');
    if (role == null || role !== "admin") {
        return false;
    } else {
        return true;
    }
}

function removeFromLocalStorage(key) {
    return window.localStorage.removeItem(key);
}

let recentlyVisitedStorageName = "recentlyVisited";

function addRecentlyVisitedProduct(productId, productTitle) {
    var visitedProduct = {
        id: productId,
        title: productTitle
    };
    if (getFromLocalStorage(recentlyVisitedStorageName) == null) {
        var array = [];
        array.unshift(visitedProduct);
        saveToLocalStorage(recentlyVisitedStorageName, JSON.stringify(array));
    } else {
        var array = JSON.parse(getFromLocalStorage(recentlyVisitedStorageName));
        array.unshift(visitedProduct);
        saveToLocalStorage(recentlyVisitedStorageName, JSON.stringify(array));
    }
}

function getRecentlyVisitedProducts() {
    var recentlyVisited = getFromLocalStorage(recentlyVisitedStorageName);
    if (recentlyVisited == null) {
        return [];
    } else {
        return JSON.parse(getFromLocalStorage(recentlyVisitedStorageName));
    }
}

function setUserFavoriteProductsInLocalStorage(favoritesArray){
    var favoriteProductsIds = [];
    saveToLocalStorage("userFavorites", JSON.stringify(favoritesArray));
}

function getUserFavoriteProductsFromLocalStorage(){
    return JSON.parse(getFromLocalStorage("userFavorites"));
}

function isProductUsersFavorite(productId){
    var favoriteProducts = JSON.parse(getFromLocalStorage("userFavorites"));
    var isUsersFavorite = false;
    favoriteProducts.forEach(function(favoriteProduct){
        if(favoriteProduct.productId == productId){
            isUsersFavorite = true;
        }
    });
    return isUsersFavorite;
}

function getFavoriteProductObjectIdByProductId(productId){
    var favoriteProducts = JSON.parse(getFromLocalStorage("userFavorites"));
    var favoriteProductObjectId = null;
    favoriteProducts.forEach(function(favoriteProduct){
        if(favoriteProduct.productId == productId){
            favoriteProductObjectId = favoriteProduct.id;
        }
    });
    return favoriteProductObjectId;
}

