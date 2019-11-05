function buildProductCard(product) {
    var objImage = null;
    if (product.images !== undefined && product.images.length > 0) {
        objImage = "<img src='" + product.images[0].data + "' alt='" + product.images.name + "'>";
    } else {
        objImage = "<img>";
    }
    return '<div><span><div class="productBox" onclick="viewProduct(' + product.id + ')">' + objImage + '<h2>' + product.title + '</h2><h3>' + product.price + ' kr</h3><h3>' + product.category + '</h3><h3>' + product.location + '</h3><br><h4>' + product.date + '</h4><h4>' + product.comments + ' comments</h4><p>' + product.description + '</p> </div></span> <span> <button type="button" onclick="deleteOffer();" style="margin-top: 75px;margin-left: 10px;margin-bottom: 75px;">Delete Offer!</button></span></div>';
}


function viewProduct(id) {
    saveToLocalStorage("productId", id);
    var products = getValueFromDomStorage("products");
    var foundProduct = products.filter(function (product) {
        return product.id == id;
    });

    addRecentlyVisitedProduct(foundProduct[0].id, foundProduct[0].title);
    window.location.href = "index.php?page=post";
}

function deleteOffer() {
    removeFromDataBase();
    alert("trying to delete an offer?");
}

function removeFromDataBase(){

}