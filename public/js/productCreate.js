function newProductCallback(data, textStatus) {

    response = JSON.parse(data);
    if (response.success === true) {
        window.location.href = "index.php";
    } else {
        var x = 10;
    }
}

function extracted(position_with_location) {
    var title = jQuery("#publishtitle");
    var category = jQuery("#publishcategory");
    var price = jQuery("#publishprice");

    var description = jQuery("#publishdescription");
    var location = jQuery("#publishlocation");

    var data = {
        title: title.val(),
        category: category.val(),
        price: price.val(),
        location: location.val(),
        description: description.val(),
        userId: getFromStorage("userId"),
        latitude: position_with_location[0],
        longtitude: position_with_location[1]
    };

    sendPostRequest('api.php/products',
        data, newProductCallback)
}

function newProduct(){

    var position_with_location;

    var location = jQuery("#publishlocation");

    position_with_location = getPositionWithLocation(location.val());


}





function getPositionWithLocation(location) {
    var xmlhttp = new XMLHttpRequest();
        var url = "https://maps.googleapis.com/maps/api/geocode/json?address="+ location + "&key=AIzaSyDxN6krn9FupLvyFEdqocm9JIV_IP7rlRs";
        xmlhttp.onreadystatechange = function() {
            if(this.readyState == 4 && this.status == 200) {
                var json = JSON.parse(this.responseText);
                // We parse the JSON response

                extracted(parseJsonLocation(json));


            }

        };
        xmlhttp.open("GET", url, true);
        xmlhttp.send();

}
 function parseJsonLocation(json) {
        var latitude = json.results[0].geometry.location.lat;
        var longitude = + json.results[0].geometry.location.lng;
        return [latitude, longitude]
    }





// TODO: add the functions to calculate the latitude and longitude here, and