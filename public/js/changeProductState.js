
function changeProductStateCallback(data, textStatus){
    response = JSON.parse(data);
    if (response.success === true) {
        // TODO do something here
    } else {
        alert("Product state not changed!!!!"+response.message);
    }
}

function changeProductState(productId, newState){
    var payload = {
        "productId": productId,
        "state": newState
    };

    sendPostRequest("api.php/products/changeproductstate",payload,changeProductStateCallback);
}

