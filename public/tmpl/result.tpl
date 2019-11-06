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
            <li><a onclick="onCategorySelection('Vehicles')">Vehicles</a></li>
            <li><a onclick="onCategorySelection('Garden & outdoor')">Garden & outdoor</a></li>
            <li><a onclick="onCategorySelection('Furniture')">Furniture</a></li>
            <li><a onclick="onCategorySelection('Appliences')">Appliences</a></li>
            <li><a onclick="onCategorySelection('Tools')">Tools</a></li>
            <li><a onclick="onCategorySelection('Clothes & shoes')">Clothes & shoes</a></li>
            <li><a onclick="onCategorySelection('Accessories & watches')">Accessories & watches</a></li>
            <li><a onclick="onCategorySelection('Toys')">Toys</a></li>
            <li><a onclick="onCategorySelection('Computers & peripherals')">Computers & peripherals</a></li>
            <li><a onclick="onCategorySelection('Audio & visuals')">Audio & visuals</a></li>
            <li><a onclick="onCategorySelection('Telephones')">Telephones</a></li>
            <li><a onclick="onCategorySelection('Experiences & activities')">Experiences & activities</a></li>
            <li><a onclick="onCategorySelection('Books & litterature')">Books & litterature</a></li>
            <li><a onclick="onCategorySelection('Bikes')">Bikes</a></li>
            <li><a onclick="onCategorySelection('Animals')">Animals</a></li>
            <li><a onclick="onCategorySelection('Collector items')">Collector items</a></li>
            <li><a onclick="onCategorySelection('Hunting & fishing')">Hunting & fishing</a></li>
            <li><a onclick="onCategorySelection('Instruments')">Instruments</a></li>
            <li><a onclick="onCategorySelection('Sport')">Sport</a></li>
        </div>
    </div>

    <div class="btn-group dropdown">
        <button class="btn btn-secondary dropdown-toggle" type="button" data-toggle="dropdown" id="priceDropdown">Price range
            <span class="caret"></span></button>
        <ul class="dropdown-menu">
            <li><a onclick="onPriceSelection(0,499)">0-499 kr</a></li>
            <li><a onclick="onPriceSelection(500,999)">500-999 kr</a></li>
            <li><a onclick="onPriceSelection(1000,4999)">1000-4999 kr</a></li>
            <li><a onclick="onPriceSelection(5000,Number.MAX_SAFE_INTEGER)">5000+ kr</a></li>
        </ul>
    </div>

    <div class="btn-group dropdown">
    <button class="btn btn-secondary dropdown-toggle" type="button" data-toggle="dropdown" id="countydropdown">County
        <span class="caret"></span></button>
            <div class="dropdown-menu" id="countyList">
                <li><a onclick="onCountySelection('Blekinge')">Blekinge</a></li>
                <li><a onclick="onCountySelection('Dalarna')">Dalarna</a></li>
                <li><a onclick="onCountySelection('Gotland')">Gotland</a></li>
                <li><a onclick="onCountySelection('Gävleborg')">Gävleborg</a></li>
                <li><a onclick="onCountySelection('Göteborg')">Göteborg</a></li>
                <li><a onclick="onCountySelection('Halland')">Halland</a></li>
                <li><a onclick="onCountySelection('Jämtland')">Jämtland</a></li>
                <li><a onclick="onCountySelection('Jönköping')">Jönköping</a></li>
                <li><a onclick="onCountySelection('Kalmar')">Kalmar</a></li>
                <li><a onclick="onCountySelection('Kronoberg')">Kronoberg</a></li>
                <li><a onclick="onCountySelection('Norrbotten')">Norrbotten</a></li>
                <li><a onclick="onCountySelection('Skaraborg')">Skaraborg</a></li>
                <li><a onclick="onCountySelection('Skåne')">Skåne</a></li>
                <li><a onclick="onCountySelection('Stockholm')">Stockholm</a></li>
                <li><a onclick="onCountySelection('Södermanland')">Södermanland</a></li>
                <li><a onclick="onCountySelection('Uppsala')">Uppsala</a></li>
                <li><a onclick="onCountySelection('Värmland')">Värmland</a></li>
                <li><a onclick="onCountySelection('Västerbotten')">Västerbotten</a></li>
                <li><a onclick="onCountySelection('Västernorrland')">Västernorrland</a></li>
                <li><a onclick="onCountySelection('Västmanland')">Västmanland</a></li>
                <li><a onclick="onCountySelection('Älvsborg')">Älvsborg</a></li>
                <li><a onclick="onCountySelection('Örebro')">Örebro</a></li>
                <li><a onclick="onCountySelection('Östergötland')">Östergötland</a></li>
            </div>
    </div>

    <div class="btn-group dropdown">
    <button class="btn btn-secondary dropdown-toggle" type="button" data-toggle="dropdown" id="citydropdown">City
        <span class="caret"></span></button>
            <div class="dropdown-menu" id="cityList">
                
            </div>
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

    //window.onload = searchProducts;
    window.onload = function(){
        searchProducts();
        document.getElementById("citydropdown").disabled = true;
    }

    populateHistoryBox();

    function onCategorySelection(category) {
        document.getElementById('categoryDropdown').textContent = category;
        saveToLocalStorage("searchcategory", category);
    }

    function onCountySelection(county){
        document.getElementById("countydropdown").textContent = county;
        saveToLocalStorage("searchcounty", county);
        //var countryDrop = document.getElementById("countydropdown").textContent;
        document.getElementById("citydropdown").disabled = false;
        //cityDrop.disabled = false;

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
        saveToLocalStorage("searchcity", city);
        }

    function onPriceSelection(min,max){
        if (min != 5000) document.getElementById("priceDropdown").textContent = min+ " - " + max + "kr";
        else document.getElementById("priceDropdown").textContent = min+ "+ " + "kr";
        saveToLocalStorage("priceMin", min);
        saveToLocalStorage("priceMax", max);
        
    }
</script>