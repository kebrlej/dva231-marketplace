
function populateHistoryBox() {
    let historyBox = document.getElementById("historyBoxLinks");
    var recentlyVisited = getRecentlyVisitedProducts();
    recentlyVisited = recentlyVisited.slice(0,10);
    recentlyVisited.forEach(function (recentlyVisitedProduct) {
        var element = document.createElement("a");
        element.addEventListener("click", function() {
           viewProduct(recentlyVisitedProduct.id);
        }, false);

        element.innerText = recentlyVisitedProduct.title.substring(0,25)+"...";
        historyBox.appendChild(element);

        historyBox.appendChild(document.createElement("br"));
        historyBox.appendChild(document.createElement("br"));
    });
}


