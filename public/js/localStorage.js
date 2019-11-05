function saveToLocalStorage(key, value) {
    window.localStorage.setItem(key, value);
}

function getFromLocalStorage(key) {
    var value = window.localStorage.getItem(key);
    return value;
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
        array.push(visitedProduct);
        saveToLocalStorage(recentlyVisitedStorageName, JSON.stringify(array));
    } else {
        var array = JSON.parse(getFromLocalStorage(recentlyVisitedStorageName));
        array.push(visitedProduct);
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

