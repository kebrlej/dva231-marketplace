function getProductsCallback(data, textStatus) {

    response = JSON.parse(data);
    if (response.success === true) {
        displayAllProducts(response.data);
    } else {
        var x = 10;
    }
}


function getProducts() {
    sendGetRequest("api.php/products", getProductsCallback);
}

function displayAllProducts(products) {
    var objarr = products;

    function buildCard(obj) {
        return '<div class="productBox"><img><h2>' + obj.title + '</h2><h3>' + obj.price + ' kr</h3><h3>' + obj.category + '</h3><h3>' + obj.location + '</h3><br><h4>' + obj.date + '</h4><h4>' + obj.comments + ' comments</h4><p>' + obj.description + '</p></div>';
    }

    for (var i = 0; i < objarr.length; ++i) {
        document.getElementById("dummyTextToLoadTheProducts").innerHTML += buildCard(objarr[i]);
    }
    if (objarr.length == 0) document.getElementById("dummyTextToLoadTheProducts").innerHTML = "No results found.";

}
