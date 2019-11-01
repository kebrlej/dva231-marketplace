function newProductCallback(data, textStatus) {

    response = JSON.parse(data);
    if (response.success === true) {
        window.location.href = "index.php";
    } else {
        var x = 10;
    }
}

function newProduct(){
    var title = jQuery("#publishtitle");
    var category = jQuery("#publishcategory");
    var price = jQuery("#publishprice");
    var location = jQuery("#publishlocation");
    var description = jQuery("#publishdescription");

    var data = {
        title: title.val(),
        category: category.val(),
        price: price.val(),
        location: location.val(),
        description: description.val(),
        userId:  getFromStorage("userId")
    };

    sendPostRequest('api.php/products',
        data, newProductCallback)
}