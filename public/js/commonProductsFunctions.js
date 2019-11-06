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
        + '<label style="font-size: 20px;">'
        + product.title
        + '</label><br><br><label style="font-size:18px;" class="glyphicon glyphicon-tag">'
        +" "+ product.price
        + ' kr</label><br><label style="font-size:18px;" class="glyphicon glyphicon-th">'
        +" "+ product.category
        + '</label><br><label style="font-size:18px;" class="glyphicon glyphicon-home">'
        +" "+ product.location
        + '</label><br><label style="font-size:18px;" class="glyphicon glyphicon-calendar">'
        + " "+ product.postDate.substring(0,10)
        + '</label><br><br><br><p>' +" "+ product.description + '</p> ' +
        '' +
        '</div>';
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

