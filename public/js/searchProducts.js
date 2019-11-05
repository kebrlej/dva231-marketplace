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
    var objarr = products;
    var searchterm = getFromLocalStorage("searchterm");
    removeFromLocalStorage("searchterm");
    var category = getFromLocalStorage("searchcategory");
    removeFromLocalStorage("searchcategory");

    if (searchterm != null) {
        document.getElementById("search").value = searchterm;
        for (var i = 0; i < objarr.length; ++i) {
            if (objarr[i].title.toLowerCase().includes(searchterm.toLowerCase()) || objarr[i].description.toLowerCase().includes(searchterm.toLowerCase())) {
                if (category != null) {
                    document.getElementById("categoryDropdown").textContent = category;
                    if (objarr[i].category == category) {
                        document.getElementById("dummyTextToLoadTheProducts").innerHTML += buildProductCard(objarr[i]);
                    }
                } else {
                    document.getElementById("dummyTextToLoadTheProducts").innerHTML += buildProductCard(objarr[i]);
                }
            }
        }
    } else {

        for (var i = 0; i < objarr.length; ++i) {
            document.getElementById("dummyTextToLoadTheProducts").innerHTML += buildProductCard(objarr[i]);
        }
    }
    if (objarr.length == 0) document.getElementById("dummyTextToLoadTheProducts").innerHTML = "No results found.";
}

function onSearchChange() {
    saveToLocalStorage("searchterm", document.getElementById('search').value);
    window.location.href = "index.php?page=result";
}
