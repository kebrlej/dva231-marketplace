function saveToStorage(key, value) {
    window.localStorage.setItem(key, value);
}

function getFromStorage(key) {
    return window.localStorage.getItem(key);
}

function removeFromStorage(key) {
    return window.localStorage.removeItem(key);
}


function addRecentlyVisitedProduct(id, title) {
    var recentlyVisitedStorageName = "recentlyVisited";

    var recentlyVisited = getFromStorage(recentlyVisitedStorageName)


}

