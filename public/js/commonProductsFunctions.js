function buildProductCard(product) {
    var objImage = null;
    if (product.images !== undefined && product.images.length > 0) {
        objImage = "<img src='" + product.images[0].data + "' alt='" + product.images.name + "'>";
    } else {
        objImage = "<img>";
    }
    return '<div class="productBox" onclick="viewProduct('
        + product.id + ',' + product.userId +')">' 
        + objImage
        + '<h2>'
        + product.title
        + '</h2><br><label class="glyphicon glyphicon-tag">'
        +" "+ product.price
        + ' kr</label><br><label class="glyphicon glyphicon-th">'
        +" "+ product.category
        + '</label><br><label class="glyphicon glyphicon-home">'
        +" "+ product.location
        + '</label><br><h4>'
        + product.date
        + '</h4><h4>'
        + product.comments
        + ' comments</h4><p class="glyphicon glyphicon-pencil">'
        +" "+ product.description
        + '</p> </div>';
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

