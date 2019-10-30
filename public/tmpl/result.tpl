<div class="background"></div>
<div style="text-align: center; align-items: center; margin-bottom:50px;">
    <form method="POST" action="index.php?page=result">
        <div id="input-group" style="margin-bottom:5px;">
            <label for="search" class="glyphicon glyphicon-search"></label>
            <input type="text" name="search" placeholder="Search for an item" id="search">
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

        <button id="btn-search" name="search">Search</button>

    </form>
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
    
  var tempobj = {
        id: 1, 
        title: "Test product with a much longer title to test", 
        price: 300, 
        location: "Västeras", 
        category: "Sport", 
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sed odio morbi quis commodo odio. Dictumst vestibulum rhoncus est pellentesque elit ullamcorper. Nunc sed blandit libero volutpat sed. Et malesuada fames ac turpis egestas sed tempus. Mauris nunc congue nisi vitae suscipit tellus mauris a. Morbi enim nunc faucibus a pellentesque sit amet porttitor eget. Non nisi est sit amet facilisis magna. Rhoncus urna neque viverra justo nec ultrices. Ultricies leo integer malesuada nunc vel risus commodo viverra maecenas. ",
        date: "Jan 1, 2019",
        comments: "4"
    };
    var tempobj2 = {
        id: 2, 
        title: "Another test product", 
        price: 500, 
        location: "Stockholm", 
        category: "Garden & outdoors", 
        description: "adfghsdfgujdghdfg",
        date: "Jan 2, 2020",
        comments: "2"
    };
    var tempobj3 = {
        id: 3, 
        title: "Yet another test product", 
        price: 1000, 
        location: "Uppsala", 
        category: "Phones", 
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sed odio morbi quis commodo odio. Dictumst vestibulum rhoncus est pellentesque elit ullamcorper. Nunc sed blandit libero volutpat sed. Et malesuada fames ac turpis egestas sed tempus. Mauris nunc congue nisi vitae suscipit tellus mauris a. Morbi enim nunc faucibus a pellentesque sit amet porttitor eget. Non nisi est sit amet facilisis magna. Rhoncus urna neque viverra justo nec ultrices. Ultricies leo integer malesuada nunc vel risus commodo viverra maecenas. ",
        date: "Jan 3, 2021",
        comments: "3"
    };
    var objarr = [tempobj, tempobj2, tempobj3];

    function buildCard(obj) {
        return '<div class="productBox"><img><h2>'+obj.title+'</h2><h3>'+obj.price+' kr</h3><h3>'+obj.category+'</h3><h3>'+obj.location+'</h3><br><h4>'+obj.date+'</h4><h4>'+obj.comments+' comments</h4><p>'+obj.description+'</p></div>';
    }

    for (var i = 0; i < objarr.length; ++i)
    {
        document.getElementById("dummyTextToLoadTheProducts").innerHTML += buildCard(objarr[i]);
    }
    if (objarr.length == 0) document.getElementById("dummyTextToLoadTheProducts").innerHTML = "No results found.";


    
    

</script>
