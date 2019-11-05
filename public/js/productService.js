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


