function populateHistoryBox() {
    let historyBox = document.getElementById("historyBoxLinks");
    var recentlyVisited = getRecentlyVisitedProducts();
    recentlyVisited.forEach(function (recentlyVisitedProduct) {
        var element = document.createElement("a");
        // element.onclick= "displayProduct("+recentlyVisitedProduct.id+")";

        element.addEventListener("click", () => {
           viewProduct(recentlyVisited.id);
        }, false);

        element.innerText = recentlyVisitedProduct.title;
        historyBox.appendChild(element);
    });
}

