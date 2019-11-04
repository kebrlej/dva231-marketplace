function getProducts() {
    sendGetRequest("api.php/products", function getProductsCallback(data, textStatus) {
        response = JSON.parse(data);
        if (response.success === true) {
            displayAllProducts(response.data);
        } else {
            var x = 10;
        }
    });
}

function buildProductCard(product) {
    var objImage = null;
    if (product.images !== undefined && product.images.length > 0) {
        objImage = "<img src='" + product.images[0].data + "' alt='" + product.images.name + "'>";
    } else {
        objImage = "<img>";
    }
    return '<div class="productBox" onclick="viewProduct(' + product.id + ')">' + objImage + '<h2>' + product.title + '</h2><h3>' + product.price + ' kr</h3><h3>' + product.category + '</h3><h3>' + product.location + '</h3><br><h4>' + product.date + '</h4><h4>' + product.comments + ' comments</h4><p>' + product.description + '</p></div>';
}

function displayAllProducts(products) {
    var searchterm = getFromStorage("searchterm");
    removeFromStorage("searchterm");

    if (searchterm != null) {
        for (var i = 0; i < products.length; ++i) {
            if (products[i].title.includes(searchterm) || products[i].description.includes(searchterm)) {
                document.getElementById("dummyTextToLoadTheProducts").innerHTML += buildProductCard(products[i]);
            }
        }
    } else {
        document.getElementById("search").value = "test";
        for (var i = 0; i < products.length; ++i) {
            document.getElementById("dummyTextToLoadTheProducts").innerHTML += buildProductCard(products[i]);
        }
    }
    if (products.length == 0) document.getElementById("dummyTextToLoadTheProducts").innerHTML = "No results found.";
}

function onSearchChange() {
    saveToStorage("searchterm", document.getElementById('search').value);
    window.location.href = "index.php?page=result";
}

function viewProduct(id) {
    saveToStorage("productId", id);
    window.location.href = "index.php?page=post";
}