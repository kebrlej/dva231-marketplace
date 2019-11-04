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

function getSingleProductCallback(data, textStatus) {

    response = JSON.parse(data);
    if (response.success === true) {
        displaySingleProduct(response.data);
    } else {
        var x = 10;
    }
}

function getSingleProduct() {
    var productId = getFromStorage("productId");
    sendGetRequest("api.php/products?id=" + productId, getSingleProductCallback);
}

function displayAllProducts(products) {
    var objarr = products;
    var searchterm = getFromStorage("searchterm");
    removeFromStorage("searchterm");

    function buildCard(obj) {
        var objImage = null;
        if (obj.images !== undefined && obj.images.length > 0) {
            objImage = "<img src='" + obj.images[0].data + "' alt='" + obj.images.name + "'>";
        } else {
            objImage = "<img>";
        }
        return '<div class="productBox" onclick="viewProduct(' + obj.id + ')">' + objImage + '<h2>' + obj.title + '</h2><h3>' + obj.price + ' kr</h3><h3>' + obj.category + '</h3><h3>' + obj.location + '</h3><br><h4>' + obj.date + '</h4><h4>' + obj.comments + ' comments</h4><p>' + obj.description + '</p></div>';
    }

    if (searchterm != null) {
        for (var i = 0; i < objarr.length; ++i) {
            if (objarr[i].title.includes(searchterm) || objarr[i].description.includes(searchterm)) {
                document.getElementById("dummyTextToLoadTheProducts").innerHTML += buildCard(objarr[i]);
            }
        }
    } else {
        document.getElementById("search").value = "test";
        for (var i = 0; i < objarr.length; ++i) {
            document.getElementById("dummyTextToLoadTheProducts").innerHTML += buildCard(objarr[i]);
        }
    }
    if (objarr.length == 0) document.getElementById("dummyTextToLoadTheProducts").innerHTML = "No results found.";

}

function onSearchChange() {
    saveToStorage("searchterm", document.getElementById('search').value);
    window.location.href = "index.php?page=result";
}

function displaySingleProduct(product){
    // $("#postTitle").val(product.title);
    document.getElementById("postTitle").innerHTML = product.title;
    document.getElementById("postPrice").innerHTML = product.price + " kr";
    document.getElementById("postLocation").innerHTML = product.location;
    document.getElementById("postDescription").innerHTML = product.description;
    document.getElementById("postDate").innerHTML = product.postDate;

}

function googleApiCallback() {
    // check found the location
    // jQuery.
}


function viewProduct(id) {
    saveToStorage("productId", id);
    window.location.href = "index.php?page=post";
}
