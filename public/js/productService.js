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

function displaySingleProduct(product) {
    if (product.images !== undefined) {
        var imageSlider = document.getElementById("image-slider");
        product.images.forEach(function (image) {
            var img = document.createElement("img");
            img.className = "image-slides";
            img.src = image.data;
            img.alt = image.name;
            imageSlider.appendChild(img);
        });
    }
    document.getElementById("postTitle").innerHTML = product.title;
    document.getElementById("postPrice").innerHTML = product.price + " kr";
    document.getElementById("postLocation").innerHTML = product.location;
    document.getElementById("postDescription").innerHTML = product.description;
    document.getElementById("postDate").innerHTML = product.postDate;

    showDivs(slideIndex);
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

function displaySingleProduct(products) {
    var objarr = products;
    var pid = getFromStorage("productId");

    for (var i = 0; i < objarr.length; ++i) {
        if (objarr[i].id == pid)
        {
            var product = objarr[i];
            // product.county;
            // product.location;
            // product.city;
            //call google api

            initMap(); // creates the map on div's id = map
            document.getElementById("postTitle").innerHTML = objarr[i].title;
            document.getElementById("postPrice").innerHTML = objarr[i].price + " kr";
            document.getElementById("postLocation").innerHTML = objarr[i].location;
            document.getElementById("postDescription").innerHTML = objarr[i].description;
            document.getElementById("postDate").innerHTML = objarr[i].postDate;

        }
    }
}

function initMap() {



    // check found the location
    var init_pos = {lat: 59.616482, lng: 16.551359};



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
// jQuery.

