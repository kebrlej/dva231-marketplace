function searchProducts() {
    sendGetRequest("api.php/products", function getProductsCallback(data, textStatus) {
        response = JSON.parse(data);
        if (response.success === true) {
            displayAllProducts(response.data);
            setValueInDomStorage("products", response.data);
        } else {
            var x = 10;
        }
    });
}

function displayAllProducts(products) {
    products = filterSearchterm(products);
    products = filterCategory(products);
    products = filterCounty(products);
    products = filterCity(products);
    products = filterPrice(products);
    products = filterState(products);

    for (var i = 0; i < products.length; ++i) {
        if (products[i].state === "VALID"){
            addProductOverviewToCurrentPage(products[i]);
            // document.getElementById("dummyTextToLoadTheProducts").innerHTML += buildProductCard(products[i]);
        }

    }
}

function onSearchChange() {
    saveToLocalStorage("searchterm", document.getElementById('search').value);
    window.location.href = "index.php?page=result";
}

function filterSearchterm(products){
    var searchtermFilteredObjects = [];
    var searchterm = getFromLocalStorage("searchterm");
    removeFromLocalStorage("searchterm");

    if (searchterm != null) {
        document.getElementById("search").value = searchterm;
        for (var i = 0; i < products.length; ++i) {
            if (products[i].title.toLowerCase().includes(searchterm.toLowerCase()) || products[i].description.toLowerCase().includes(searchterm.toLowerCase())) {
                searchtermFilteredObjects.push(products[i]);
            }
        }
    }
    else {
        return products;
    }
    return searchtermFilteredObjects;
}

function filterCategory(products){
    var categoryFilteredObjects = [];
    var category = getFromLocalStorage("searchcategory");
    removeFromLocalStorage("searchcategory");

    if (category != null) {
        document.getElementById("categoryDropdown").textContent = category;
        for (var i = 0; i < products.length; ++i) {
            if (products[i].category == category) {
                categoryFilteredObjects.push(products[i]);
            }
        }
    } else {
        return products;
    }
    return categoryFilteredObjects;
}

function filterCounty(products){
    var countyFilteredObjects = [];
    var county = getFromLocalStorage("searchcounty");
    removeFromLocalStorage("searchcounty");

    if (county != null) {
        document.getElementById("countydropdown").textContent = county;
        for (var i = 0; i < products.length; ++i) {
            if (products[i].county == county) {
                countyFilteredObjects.push(products[i]);
            }
        }
    } else {
        return products;
    }
    return countyFilteredObjects;
}

function filterCity(products){
    var cityFilteredObjects = [];
    var city = getFromLocalStorage("searchcity");
    removeFromLocalStorage("searchcity");

    if (city != null) {
        document.getElementById("citydropdown").textContent = city;
        for (var i = 0; i < products.length; ++i) {
            if (products[i].location == city) {
                cityFilteredObjects.push(products[i]);
            }
        }
    } else {
        return products;
    }
    return cityFilteredObjects;
}

function filterPrice(products){
    var priceFilteredObjects = [];
    var min = getFromLocalStorage("priceMin");
    var max = getFromLocalStorage("priceMax");
    removeFromLocalStorage("priceMin");
    removeFromLocalStorage("priceMax");

    if (min != null) {
        if (min != 5000){   //0-4999
            document.getElementById("priceDropdown").textContent = min + " - " + max + " kr";
            for (var i = 0; i < products.length; ++i) {
                if (parseInt(products[i].price) > min && parseInt(products[i].price) < max) {
                    priceFilteredObjects.push(products[i]);
                }
            }
        }else{  //5000+
            document.getElementById("priceDropdown").textContent = min + "+ kr";
            for (var i = 0; i < products.length; ++i) {
                if (parseInt(products[i].price) > min) {
                    priceFilteredObjects.push(products[i]);
                }
            }
        }
    } else {
        //no specific
        return products;
    }
    return priceFilteredObjects;
}

function filterState(products){
    var stateFilteredObjects = [];


    for (var i = 0; i < products.length; ++i) {
        if (products[i].state == 'VALID') {
                stateFilteredObjects.push(products[i]);
            
        }
    }
    return stateFilteredObjects;
}