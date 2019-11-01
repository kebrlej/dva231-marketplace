function saveToStorage(key, value) {
    window.localStorage.setItem(key, value);
}

function getFromStorage(key, value) {
    window.localStorage.getItem(key, value);
}


function addRecentlyVisitedProduct(id, title) {
    var recentlyVisitedStorageName = "recentlyVisited";

    var recentlyVisited = getFromStorage(recentlyVisitedStorageName)


}

