function saveToLocalStorage(key, value) {
    window.localStorage.setItem(key, value);
}

function getFromLocalStorage(key) {
    return window.localStorage.getItem(key);
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

    if (getFromLocalStorage(recentlyVisitedStorageName) === undefined) {
        saveToLocalStorage(recentlyVisitedStorageName, []);
    } else {
        getFromLocalStorage(recentlyVisitedStorageName).push(visitedProduct);
    }
}

function getRecentlyVisitedProducts() {
    if (getFromLocalStorage(recentlyVisitedStorageName) === undefined) {
        return [];
    } else {
        return getFromLocalStorage(recentlyVisitedStorageName);
    }
}

