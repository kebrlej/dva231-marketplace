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

function displaySingleProduct(product){
    // $("#postTitle").val(product.title);
    document.getElementById("postTitle").innerHTML = product.title;
    document.getElementById("postPrice").innerHTML = product.price + " kr";
    document.getElementById("postLocation").innerHTML = product.location;
    document.getElementById("postDescription").innerHTML = product.description;
    document.getElementById("postDate").innerHTML = product.postDate;
}


