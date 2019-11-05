function buildProductCard(product) {
    var objImage = null;
    if (product.images !== undefined && product.images.length > 0) {
        objImage = "<img src='" + product.images[0].data + "' alt='" + product.images.name + "'>";
    } else {
        objImage = "<img>";
    }
    return '<div><span><div class="productBox" onclick="viewProduct('
        + product.id + ',' + product.userId +')">' 
        + objImage
        + '<h2>'
        + product.title
        + '</h2><h3>'
        + product.price
        + ' kr</h3><h3>'
        + product.category
        + '</h3><h3>'
        + product.location
        + '</h3><br><h4>'
        + product.date
        + '</h4><h4>'
        + product.comments
        + ' comments</h4><p>'
        + product.description
        + '</p> </div></span> <span> <button type="button" onclick="changeProductState(\'' + product.id + '\', \'' + "SOLD" + '\');" style="margin-top: 75px;margin-left: 10px;margin-bottom: 75px;">Delete Offer!</button></span></div>';
}
//product.id,\''+ "SOLD"+ '\'

function viewProduct(id, userId) {
    saveToLocalStorage("productId", id);
    saveToLocalStorage("productUserId", userId);
    var products = getValueFromDomStorage("products");
    var foundProduct = products.filter(function (product) {
        return product.id == id;
    });

    addRecentlyVisitedProduct(foundProduct[0].id, foundProduct[0].title);
    window.location.href = "index.php?page=post";
}

