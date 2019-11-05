<div class="background"></div>
<div style="text-align: center; align-items: center; margin-bottom:50px;">

    <div id="input-group" style="margin-bottom:5px;">
        <label for="search" class="glyphicon glyphicon-search"></label>
        <input type="text" name="search" placeholder="Search for an item" id="search">
    </div>

    <div class="btn-group dropdown">
        <button class="btn btn-secondary dropdown-toggle" type="button" data-toggle="dropdown" id="categoryDropdown">
            Category
            <span class="caret"></span></button>
        <div class="dropdown-menu">
            <li><a onclick="onDropdrownSelection('Vehicles')">Vehicles</a></li>
            <li><a onclick="onDropdrownSelection('Garden & outdoor')">Garden & outdoor</a></li>
            <li><a onclick="onDropdrownSelection('Furniture')">Furniture</a></li>
            <li><a onclick="onDropdrownSelection('Appliences')">Appliences</a></li>
            <li><a onclick="onDropdrownSelection('Tools')">Tools</a></li>
            <li><a onclick="onDropdrownSelection('Clothes & shoes')">Clothes & shoes</a></li>
            <li><a onclick="onDropdrownSelection('Accessories & watches')">Accessories & watches</a></li>
            <li><a onclick="onDropdrownSelection('Toys')">Toys</a></li>
            <li><a onclick="onDropdrownSelection('Computers & peripherals')">Computers & peripherals</a></li>
            <li><a onclick="onDropdrownSelection('Audio & visuals')">Audio & visuals</a></li>
            <li><a onclick="onDropdrownSelection('Telephones')">Telephones</a></li>
            <li><a onclick="onDropdrownSelection('Experiences & activities')">Experiences & activities</a></li>
            <li><a onclick="onDropdrownSelection('Books & litterature')">Books & litterature</a></li>
            <li><a onclick="onDropdrownSelection('Bikes')">Bikes</a></li>
            <li><a onclick="onDropdrownSelection('Animals')">Animals</a></li>
            <li><a onclick="onDropdrownSelection('Collector items')">Collector items</a></li>
            <li><a onclick="onDropdrownSelection('Hunting & fishing')">Hunting & fishing</a></li>
            <li><a onclick="onDropdrownSelection('Instruments')">Instruments</a></li>
            <li><a onclick="onDropdrownSelection('Sport')">Sport</a></li>
        </div>
    </div>

    <div class="btn-group dropdown">
        <button class="btn btn-secondary dropdown-toggle" type="button" data-toggle="dropdown">Price range
            <span class="caret"></span></button>
        <ul class="dropdown-menu">
            <li><a onclick="onDropdrownSelectyion('Vehicles')">0-499 kr</a></li>
            <li><a href="#">500-999 kr</a></li>
            <li><a href="#">1000-4999 kr</a></li>
            <li><a href="#">5000+ kr</a></li>
        </ul>
    </div>

    <div class="btn-group dropdown">
        <button class="btn btn-secondary dropdown-toggle" type="button" data-toggle="dropdown">Area
            <span class="caret"></span></button>
        <ul class="dropdown-menu">
            <li><a href="#">Blekinge</a></li>
            <li><a href="#">Dalarna</a></li>
            <li><a href="#">Gotland</a></li>
            <li><a href="#">Gävleborg</a></li>
            <li><a href="#">Göteborg</a></li>
            <li><a href="#">Halland</a></li>
            <li><a href="#">Jämtland</a></li>
            <li><a href="#">Jönköping</a></li>
            <li><a href="#">Kalmar</a></li>
            <li><a href="#">Kronoberg</a></li>
            <li><a href="#">Norrbotten</a></li>
            <li><a href="#">Skaraborg</a></li>
            <li><a href="#">Skåne</a></li>
            <li><a href="#">Stockholm</a></li>
            <li><a href="#">Södermanland</a></li>
            <li><a href="#">Uppsala</a></li>
            <li><a href="#">Värmland</a></li>
            <li><a href="#">Västerbotten</a></li>
            <li><a href="#">Västernorrland</a></li>
            <li><a href="#">Västmanland</a></li>
            <li><a href="#">Älvsborg</a></li>
            <li><a href="#">Örebro</a></li>
            <li><a href="#">Östergötland</a></li>
        </ul>
    </div>

    <div class="btn-group dropdown">
        <button class="btn btn-secondary dropdown-toggle" type="button" data-toggle="dropdown">Age
            <span class="caret"></span></button>
        <ul class="dropdown-menu">
            <li><a href="#">Today</a></li>
            <li><a href="#">This week</a></li>
            <li><a href="#">This month</a></li>
            <li><a href="#">All time</a></li>
        </ul>
    </div>

    <button id="btn-search" name="search" onclick="onSearchChange()">Search</button>

</div>
<div id="historyBox" class="historyBox">
    <h4 style="font-size:18px;">Recently viewed</h4>
    <div id="historyBoxLinks">
    </div>
</div>

<p id="dummyTextToLoadTheProducts"></p>

<script> 
    window.onload = getProducts;

    function onDropdrownSelection(category) {
        document.getElementById('categoryDropdown').textContent = category;
        saveToLocalStorage("searchcategory", category);
    }

    populateHistoryBox();

</script>