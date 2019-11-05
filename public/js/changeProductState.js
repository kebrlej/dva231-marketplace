
function changeProductStateCallback(data, textStatus){
    response = JSON.parse(data);
    if (response.success === true) {
        // TODO do something here
        window.location.reload(true);
    } else {
        alert("Product state not changed!!!!"+response.message);
    }
}

function changeProductState(productId, newState){
    console.log(newState);
    var payload = {
        "productId": productId,
        "state": newState
    };

    sendPostRequest("api.php/products/changeproductstate",payload,changeProductStateCallback);
}

