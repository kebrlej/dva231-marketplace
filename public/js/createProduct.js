function newProductCallback(data, textStatus) {
    response = JSON.parse(data);
    if (response.success === true) {
        window.location.href = "index.php";
    } else {
        var x = 10;
    }
}

function loadImage(input) {
    if (input.files && input.files[0]) {
        var fileReader = new FileReader();
        fileReader.readAsDataURL(input.files[0]);

        fileReader.onload = function (file) {
            var x = 10;
            var imagePreview = jQuery("#imagePreview");
            imagePreview.attr("src", file.target.result);

            var image = {
                name: input.files[0].name,
                data: file.target.result
            };

            putInDomStorageArray("productImages", image);

            var x = 10;
        };
    }

}

function createNewProduct() {
    var title = jQuery("#publishtitle");
    var category = jQuery("#publishcategory");
    var price = jQuery("#publishprice");
    var location = jQuery("#publishlocation");
    var description = jQuery("#publishdescription");

    temp = document.getElementById("categorydropdown").textContent;

    var data = {
        title: title.val(),
        category: document.getElementById("categorydropdown").textContent,
        price: price.val(),
        location: location.val(),
        description: description.val(),
        userId: getFromStorage("userId"),
        latitude: 1,
        longtitude: 1,
        images: getDomStorageArray("productImages")
    };
    sendPostRequest('api.php/products',
        data, newProductCallback)
};


// function getPositionWithLocation(location) {
//     var xmlhttp = new XMLHttpRequest();
//     var url = "https://maps.googleapis.com/maps/api/geocode/json?address="+ location + "&key=AIzaSyDxN6krn9FupLvyFEdqocm9JIV_IP7rlRs";
//     xmlhttp.onreadystatechange = function() {
//         if(this.readyState == 4 && this.status == 200) {
//             var json = JSON.parse(this.responseText);
//             // We parse the JSON response
//
//             extracted(parseJsonLocation(json));
//
//
//         }
//
//     };
//     xmlhttp.open("GET", url, true);
//     xmlhttp.send();
//
// }
//
// function parseJsonLocation(json) {
//     var latitude = json.results[0].geometry.location.lat;
//     var longitude = + json.results[0].geometry.location.lng;
//     return [latitude, longitude]
// }