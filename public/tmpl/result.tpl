<div class="background"></div>
<div style="text-align: center; align-items: center; margin-bottom:50px;">

        <div id="input-group" style="margin-bottom:5px;">
            <label for="search" class="glyphicon glyphicon-search"></label>
            <input type="text" name="search" placeholder="Search for an item" id="search" onchange="onSearchChange()">
        </div>

        <div class="btn-group dropdown">
            <button class="btn btn-secondary dropdown-toggle" type="button" data-toggle="dropdown">Category
                <span class="caret"></span></button>
            <ul class="dropdown-menu">
                <li><a href="#">Vehicles</a></li>
                <li><a href="#">Garden & outdoor</a></li>
                <li><a href="#">Furniture</a></li>
                <li><a href="#">Appliences</a></li>
                <li><a href="#">Tools</a></li>
                <li><a href="#">Clothes & shoes</a></li>
                <li><a href="#">Accessories & watches</a></li>
                <li><a href="#">Toys</a></li>
                <li><a href="#">Computers & peripherals</a></li>
                <li><a href="#">Audio & visuals</a></li>
                <li><a href="#">Telephones</a></li>
                <li><a href="#">Experiences & activities</a></li>
                <li><a href="#">Books & litterature</a></li>
                <li><a href="#">Bikes</a></li>
                <li><a href="#">Animals</a></li>
                <li><a href="#">Collector items</a></li>
                <li><a href="#">Hunting & fishing</a></li>
                <li><a href="#">Instruments</a></li>
                <li><a href="#">Sport</a></li>
            </ul>
        </div>

        <div class="btn-group dropdown">
            <button class="btn btn-secondary dropdown-toggle" type="button" data-toggle="dropdown">Price range
                <span class="caret"></span></button>
            <ul class="dropdown-menu">
                <li><a href="#">0-499 kr</a></li>
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
    <a>Title of the ad</a>
    <br>
    <a>Another example of an ad that is much longer than the first one</a>
    <br>
</div>

<p id="dummyTextToLoadTheProducts"></p>

<script>
    window.onload = getProducts;
</script>