<div class="background"></div>

<?php
if (SessionManagement::isLoggedIn()) {
    echo '
        <div id="publishForm" style="overflow: visible">
<h1>Publish new post</h1><br>
<label for="publishtitle" class="glyphicon glyphicon-font"></label>
<input type="text" name="publishtitle" placeholder="Title" id="publishtitle">

<br><br>
<label for="categorydropdrown" class="glyphicon glyphicon-folder-open" style="margin-left:4px; padding-right:10px"></label>
<div class="btn-group dropdown">
            <button class="btn btn-secondary dropdown-toggle" type="button" data-toggle="dropdown" id="categorydropdown">Category
                <span class="caret"></span></button>
            <div class="dropdown-menu">
                <li><a onclick="onCategorySelection(\'Vehicles\')">Vehicles</a></li>
                <li><a onclick="onCategorySelection(\'Garden & outdoor\')">Garden & outdoor</a></li>
                <li><a onclick="onCategorySelection(\'Furniture\')">Furniture</a></li>
                <li><a onclick="onCategorySelection(\'Appliences\')">Appliences</a></li>
                <li><a onclick="onCategorySelection(\'Tools\')">Tools</a></li>
                <li><a onclick="onCategorySelection(\'Clothes & shoes\')">Clothes & shoes</a></li>
                <li><a onclick="onCategorySelection(\'Accessories & watches\')">Accessories & watches</a></li>
                <li><a onclick="onCategorySelection(\'Toys\')">Toys</a></li>
                <li><a onclick="onCategorySelection(\'Computers & peripherals\')">Computers & peripherals</a></li>
                <li><a onclick="onCategorySelection(\'Audio & visuals\')">Audio & visuals</a></li>
                <li><a onclick="onCategorySelection(\'Telephones\')">Telephones</a></li>
                <li><a onclick="onCategorySelection(\'Experiences & activities\')">Experiences & activities</a></li>
                <li><a onclick="onCategorySelection(\'Books & litterature\')">Books & litterature</a></li>
                <li><a onclick="onCategorySelection(\'Bikes\')">Bikes</a></li>
                <li><a onclick="onCategorySelection(\'Animals\')">Animals</a></li>
                <li><a onclick="onCategorySelection(\'Collector items\')">Collector items</a></li>
                <li><a onclick="onCategorySelection(\'Hunting & fishing\')">Hunting & fishing</a></li>
                <li><a onclick="onCategorySelection(\'Instruments\')">Instruments</a></li>
                <li><a onclick="onCategorySelection(\'Sport\')">Sport</a></li>
            </div>
        </div>
<br><br>

<label for="publishprice" class="glyphicon glyphicon-tag"></label>
<input type="text" name="publishprice" placeholder="Price" id="publishprice"> kr

<br><br>

<label for="countydropdrown" class="glyphicon glyphicon-home" style="margin-left:4px; padding-right:10px"></label>
<div class="btn-group dropdown">
    <button class="btn btn-secondary dropdown-toggle" type="button" data-toggle="dropdown" id="countydropdown">County
        <span class="caret"></span></button>
            <div class="dropdown-menu" id="countyList">
                <li><a onclick="onCountySelection(\'Blekinge\')">Blekinge</a></li>
                <li><a onclick="onCountySelection(\'Dalarna\')">Dalarna</a></li>
                <li><a onclick="onCountySelection(\'Gotland\')">Gotland</a></li>
                <li><a onclick="onCountySelection(\'Gävleborg\')">Gävleborg</a></li>
                <li><a onclick="onCountySelection(\'Göteborg\')">Göteborg</a></li>
                <li><a onclick="onCountySelection(\'Halland\')">Halland</a></li>
                <li><a onclick="onCountySelection(\'Jämtland\')">Jämtland</a></li>
                <li><a onclick="onCountySelection(\'Jönköping\')">Jönköping</a></li>
                <li><a onclick="onCountySelection(\'Kalmar\')">Kalmar</a></li>
                <li><a onclick="onCountySelection(\'Kronoberg\')">Kronoberg</a></li>
                <li><a onclick="onCountySelection(\'Norrbotten\')">Norrbotten</a></li>
                <li><a onclick="onCountySelection(\'Skaraborg\')">Skaraborg</a></li>
                <li><a onclick="onCountySelection(\'Skåne\')">Skåne</a></li>
                <li><a onclick="onCountySelection(\'Stockholm\')">Stockholm</a></li>
                <li><a onclick="onCountySelection(\'Södermanland\')">Södermanland</a></li>
                <li><a onclick="onCountySelection(\'Uppsala\')">Uppsala</a></li>
                <li><a onclick="onCountySelection(\'Värmland\')">Värmland</a></li>
                <li><a onclick="onCountySelection(\'Västerbotten\')">Västerbotten</a></li>
                <li><a onclick="onCountySelection(\'Västernorrland\')">Västernorrland</a></li>
                <li><a onclick="onCountySelection(\'Västmanland\')">Västmanland</a></li>
                <li><a onclick="onCountySelection(\'Älvsborg\')">Älvsborg</a></li>
                <li><a onclick="onCountySelection(\'Örebro\')">Örebro</a></li>
                <li><a onclick="onCountySelection(\'Östergötland\')">Östergötland</a></li>
            </div>
</div>

<div class="btn-group dropdown">
    <button class="btn btn-secondary dropdown-toggle" type="button" data-toggle="dropdown" id="citydropdown">City
        <span class="caret"></span></button>
            <div class="dropdown-menu" id="cityList">
                
            </div>
</div>

<br><br>
<label for="publishdescription" class="glyphicon glyphicon-pencil"></label>
<textarea class="form-control" rows="5" id="publishdescription" placeholder="Description"></textarea>

<br><br>
<label for="publishimages" class="glyphicon glyphicon-camera"></label>
<label>Pictures:</label>
<form action="/file-upload"
      class="dropzone"
      id="my-awesome-dropzone"></form>
<!--
       <input type="file" name="productImage" placeholder="Product image" id="productImage" onchange="loadImage(this)">
       <img src="" id="imagePreview" width="100" length="100">
-->
<br><br>
<button id="btn-login" name="publish" onClick="createNewProduct()">Publish</button>
</div>


';
} else {
echo '
<div id="login-box" style="color:#eee;">Please log in in order to publish a new post.<br><br>
    <a href="index.php?page=login">
        <button id="btn-login" name="login" ;
        ">Log in</button></a>
    <a href="index.php?page=register">
        <button id="btn-all" name="register" ;
        ">Register</button></a>
</div>';
}
?>

<script>
    var cityInfo = {
            Blekinge: ["Karlshamn", "Karlskrona", "Olofström", "Ronneby", "Sölvesborg"],
            Dalarna: ["Avesta", "Borlänge", "Falun", "Gagnef", "Hedemora", "Leksand", "Ludvika", "Malung-Sälen", "Mora", "Orsa", "Rättvik", "Smedjebacken", "Säter", "Vansbro", "Älvdalen"],
            Gotland: ["Gotland"],
            Gävleborg: ["Bollnär", "Gävle", "Hofors", "Hudviksvall", "Ljusdal", "Nordanstig", "Ockelbo", "Ovanåker", "Sandviken", "Söderhamn"],
            Göteborg: ["Göteborgs stad", "Härryda", "Kungsälv", "Lysekil", "Munkedal", "Mölndal", "Orust", "Partille", "Sotenäs", "Stenungsund", "Strömstad", "Tanum", "Tjörn", "Uddevalla", "Öckerö"],
            Halland: ["Falkenberg", "Halmstad", "Hylte", "Kungsbacka", "Laholm", "Varberg"],
            Jämtland: ["Berg", "Bräcke", "Härjedalen", "Krokom", "Ragunda", "Strömstad", "Åre", "Östersund"],
            Jönköping: ["Aneby", "Eksjö", "Gislaved", "Gnosjö", "Habo", "Jönköping", "Mullsjö", "Nässjö", "Sävsjö", "Tranås", "Vaggeryd", "Vetlanda", "Värnamo"],
            Kalmar: ["Borgholm", "Emmaboda", "Hultsfred", "Högsby", "Kalmar", "Mösterås", "Mörbylånga", "Nybro", "Oskarshamn", "Torsås", "Vimmerby", "Västervik"],
            Kronoberg: ["Alvesta", "Lessebo", "Ljungby", "Markaryd", "Tingsryd", "Uppvidinge", "Växjö", "Älmhult"],
            Norrbotten: ["Arjeplog", "Arvidsjaur", "Boden", "Gällivare", "Haparanda", "Jokkmokk", "Kalix", "Kiruna", "Luleå", "Pajala", "Piteå", "Älvsbyn", "Överkalix", "Övertorneå"],
            Skaraborg: ["Essunga", "Falköping", "Grästorp", "Gullspång", "Götene", "Hjo", "Karlsborg", "Lidköping", "Marisestad", "Skara", "Skönde", "Tibro", "Tidaholm", "Töreboda", "Vara"],
            Skåne: ["Bjuv", "Bromölla", "Burlöv", "Båstad", "Eslöv", "Helsingborg", "Hässleholm", "Höganäs", "Hörby", "Höör", "Klippan", "Kristianstad", "Kävlinge", "Landskrona", "Lomma", "Lund", "Malmö", "Osby", "Perstorp", "Simrishamn", "Sjöbo", "Skurup", "Staffanstorp", "Svalöv", "Svedala", "Tomelilla", "Trelleborg", "Vellinge", "Ystad", "Åstorp", "Ängelholm", "Örkelljunga", "Östra Göinge"],
            Stockholm: ["Botkyrka", "Danderyd", "Ekerö", "Haninge", "Huddinge", "Järfälla", "Lidingö", "Nacka", "Norrtälje", "Nykvarn", "Nynäshamn", "Salem", "Sigtuna", "Sollentuna", "Solna", "Stockholm", "Sundbyberg", "Södertälje", "Tyresö", "Täby", "Upplands-Bro", "Upplands Väsby", "Vallentuna", "Vaxholm", "Värmdö", "Österåker"],
            Södermanland: ["Eskilstuna", "Flen", "Gnesta", "Katrineholm", "Nyköping", "Oxelösund", "Strängnäs", "Trosa", "Vingåker"],
            Uppsala: ["Enköping", "Heby", "Håbo", "Knivsta", "Tierp", "Uppsala", "Älvkarleby", "Östhammar"],
            Värmland: ["Arvika", "Eda", "Filipstad", "Forshaga", "Grums", "Hagfors", "Hammarö", "Karlstad", "Kil", "Kristinehamn", "Munkfors", "Storfors", "Sunne", "Säffle", "Torsby", "Årjäng"],
            Västerbotten: ["Bjurholm", "Dorotea", "Lycksele", "Malå", "Nordmaling", "Norsjö", "Robertsfors", "Skellefteå", "Sorsele", "Storuman", "Umeå", "Vilhelmina", "Vindeln", "Vännäs", "Åsele"],
            Västernorrland: ["Härnösand", "Kramfors", "Sollefteå", "Sundsvall", "Timrå", "Ånge", "Örnsköldsvik"],
            Västmanland: ["Arboga", "Fagersta", "Hallstahammar", "Kungsör", "Köping", "Norberg", "Sala", "Skinnskatteberg", "Surahammar", "Västerås"],
            Älvsborg: ["Ale", "Alingsås", "Bengtfors", "Bollebygd", "Borås", "Dals-Ed", "Färgelanda", "Herrljunga", "Lerum", "Lilla Edet", "Mark", "Mellerud", "Svenljunga", "Tranemo", "Trollhättan", "Ulricehamn", "Vårgårda", "Vänersborg", "Åmål"],
            Örebro: ["Askersund", "Degerfors", "Hallsberg", "Hällefors", "Karlskoga", "Kumla", "Laxå", "Lekeberg", "Lindesberg", "Ljusnarsberg", "Nora", "Örebro"],
            Östergötland: ["Boxholm", "Finspång", "Kinda", "Linköping", "Mjölby", "Motala", "Norrköping", "Söderköping", "Vadstena", "Valdemarsvik", "Ydre", "Åtvidaberg", "Ödeshög"]
            }

    window.onload = document.getElementById("citydropdown").disabled = true;

    function onCategorySelection(category){
        document.getElementById("categorydropdown").textContent = category;
    }
    function onCountySelection(county){
        document.getElementById("countydropdown").textContent = county;
        var countryDrop = document.getElementById("countydropdown").textContent;
        var cityDrop = document.getElementById("citydropdown");
        cityDrop.disabled = false;

        $('#cityList').empty()

        switch(county){
        case "Blekinge": cityArr = cityInfo.Blekinge; break; 
        case "Dalarna": cityArr = cityInfo.Dalarna;break;
        case "Gotland": cityArr = cityInfo.Gotland;break;
        case "Gävleborg": cityArr = cityInfo.Gävleborg;break;
        case "Göteborg": cityArr = cityInfo.Göteborg;break;
        case "Halland": cityArr = cityInfo.Halland;break;
        case "Jämtland": cityArr = cityInfo.Jämtland;break;
        case "Jönköping": cityArr = cityInfo.Jönköping;break;
        case "Kalmar": cityArr = cityInfo.Kalmar;break;
        case "Kronoberg": cityArr = cityInfo.Kronoberg;break;
        case "Norrbotten": cityArr = cityInfo.Norrbotten;break;
        case "Skaraborg": cityArr = cityInfo.Skaraborg;break;
        case "Skåne": cityArr = cityInfo.Skåne;break;
        case "Stockholm": cityArr = cityInfo.Stockholm;break;
        case "Södermanland": cityArr = cityInfo.Södermanland;break;
        case "Uppsala": cityArr = cityInfo.Uppsala;break;
        case "Värmland": cityArr = cityInfo.Värmland;break;
        case "Västerbotten": cityArr = cityInfo.Västerbotten;break;
        case "Västernorrland": cityArr = cityInfo.Västernorrland;break;
        case "Västmanland": cityArr = cityInfo.Västmanland;break;
        case "Älvsborg": cityArr = cityInfo.Älvsborg;break;
        case "Örebro": cityArr = cityInfo.Örebro;break;
        case "Östergötland": cityArr = cityInfo.Östergötland;break;
        default:
            break;
        }

        for (var i = 0; i < cityArr.length; ++i){
            $("#cityList").append( '<li><a onclick="onCitySelection(\'' + cityArr[i] + '\')">' + cityArr[i] + '</a></li>'); 
        }
    }
    function onCitySelection(city){
        document.getElementById("citydropdown").textContent = city;
        }
</script>
