function saveToStorage(key, value) {
    window.localStorage.setItem(key, value);
}

function getFromStorage(key) {
    return window.localStorage.getItem(key);
}


function addRecentlyVisitedProduct(id, title) {
    var recentlyVisitedStorageName = "recentlyVisited";

    var recentlyVisited = getFromStorage(recentlyVisitedStorageName)


}

