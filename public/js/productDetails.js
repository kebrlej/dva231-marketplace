function displayProductDetails() {
    var productId = getFromLocalStorage("productId");
    sendGetRequest("api.php/products?id=" + productId, getSingleProductCallback);
}

function getSingleProductCallback(data, textStatus) {
    response = JSON.parse(data);
    if (response.success === true) {
        displaySingleProduct(response.data);


    } else {
        var x = 10;
    }
}

function loadProductImages(product) {
    var imageSlider = document.getElementById("image-slider");
    if (product.images !== undefined && product.images !== null && product.images.length > 0) {
        product.images.forEach(function (image) {
            var img = document.createElement("img");
            img.className = "image-slides";
            img.src = image.data;
            img.alt = image.name;
            imageSlider.appendChild(img);
        });
        showDivs(slideIndex);
    } else {
        imageSlider.parentElement.removeChild(imageSlider);
    }
}

function setElementAsRemoveFavorites(element, id){
    element.innerHTML = "Remove from favorites";
    element.onclick = function(){
        deleteProductFromUserFavorites(id);
        setElementAsAddToFavorites(element,id);
    };
}

function setElementAsAddToFavorites(element,id){
    element.innerHTML = "Add to favorites";
    element.onclick = function () {
        addProductToUserFavorites(id);
        setElementAsRemoveFavorites(element,id);
    };
}


function displaySingleProduct(product) {
    loadProductImages(product);

    document.getElementById("postTitle").innerHTML = product.title;
    document.getElementById("postPrice").innerHTML = " " + product.price + " kr";
    document.getElementById("postLocation").innerHTML = " " + product.location;
    document.getElementById("postDescription").innerHTML = " " + product.description;
    document.getElementById("postDate").innerHTML = " " + product.postDate.substring(0, 10);
    document.getElementById("postUser").innerHTML = " " + product.user.username;
    document.getElementById("postEmail").innerHTML = " " + product.user.email;

    var elem = document.getElementById("follow-delete-button");
    if (getFromLocalStorage("userId") === product.userId || isUserAdmin()) {
        elem.innerHTML = "Remove product";
        elem.onclick = function () {
            changeProductState(product.id, "SOLD");
        }
    } else if (isProductUsersFavorite(product.id)) {
        setElementAsRemoveFavorites(elem, product.id)
    } else {
        setElementAsAddToFavorites(elem,product.id);
    }

    loadComments(product.id);

    getPositionWithLocation(product.county, product.location);
    window.scrollTo(0,document.body.scrollHeight);
}


var slideIndex = 1;

function plusDivs(n) {
    showDivs(slideIndex += n);
}

function currentDiv(n) {
    showDivs(slideIndex = n);
}

function showDivs(n) {
    var i;
    var x = document.getElementsByClassName("image-slides");
    var dots = document.getElementsByClassName("demo");
    if (n > x.length) {
        slideIndex = 1
    }
    if (n < 1) {
        slideIndex = x.length
    }
    for (i = 0; i < x.length; i++) {
        x[i].style.display = "none";
    }
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" w3-white", "");
    }
    x[slideIndex - 1].style.display = "block";
    dots[slideIndex - 1].className += " w3-white";
}

//
// function displaySingleProduct(products) {
//     var objarr = products;
//     var pid = getFromStorage("productId");
//
//     for (var i = 0; i < objarr.length; ++i) {
//         if (objarr[i].id == pid)
//         {
//             var product = objarr[i];
//             // product.county;
//             // product.location;
//             // product.city;
//             //call google api
//
//             initMap(); // creates the map on div's id = map
//             document.getElementById("postTitle").innerHTML = objarr[i].title;
//             document.getElementById("postPrice").innerHTML = objarr[i].price + " kr";
//             document.getElementById("postLocation").innerHTML = objarr[i].location;
//             document.getElementById("postDescription").innerHTML = objarr[i].description;
//             document.getElementById("postDate").innerHTML = objarr[i].postDate;
//
//         }
//     }
// }

var latitude;
var longtitude;

function getPositionWithLocation(county, city) {
    var xmlhttp = new XMLHttpRequest();
    var url = "https://maps.googleapis.com/maps/api/geocode/json?address=" + county + "," + city + "&key=AIzaSyAEuFevYKSOtU4SDHfAN0d1HCv5WqHPH-c";
    xmlhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {

            var json = JSON.parse(this.responseText);
            // We parse the JSON response


            var coordinates = parseJsonLocation(json);

            latitude = coordinates[0];
            longtitude = coordinates[1];

            var script = document.createElement('script');
            script.src = "https://maps.googleapis.com/maps/api/js?key=AIzaSyAEuFevYKSOtU4SDHfAN0d1HCv5WqHPH-c&callback=initMap";

            document.head.appendChild(script);

            var x = 10;


        }
    };
    xmlhttp.open("GET", url, true);
    xmlhttp.send();

}

function parseJsonLocation(json) {
    var latitude = json.results[0].geometry.location.lat;
    var longitude = +json.results[0].geometry.location.lng;
    return [latitude, longitude]
}


function initMap() {
    // check found the location
    var init_pos = {lat: latitude, lng: longtitude};
    // The map, centered at Uluru
    var map = new google.maps.Map(
        document.getElementById('map'), {
            zoom: 13,
            center: init_pos
        });
    var marker = new google.maps.Marker({
        position: init_pos,
        map: map
    });
}


