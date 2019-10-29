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
<!-- First example -->
<a href="index.php?page=post" style="text-decoration: none;">

    <div id="adBox" class="adBox">

        <table style="text-align:center; margin-top:0px;">

            <tr>
                <td rowspan="7" height="150px" width="250px" style="background-color:black;">
                    <img src="img/img2.jpg" width="100%" height="156px">
                </td>
                <td colspan="2">
                    <h2>Title of the ad</h2>
                </td>
            </tr>
            <tr>
                <td width="200px">
                    <h3 style="color:#444">Accessories & watches</h3>
                </td>
                <td rowspan="6">
                    <p>This is the description of an ad that is placed to the right in the preview. If the entire
                        description doesn't fit it will get cut off. To see the full description, the user will have to
                        click the ad which will redirect them to the full version of the ad on it's own page. There,
                        additional info will also be shown, like more pictures uploaded by the poster as well as the
                        comments visitors have left on the ad. The poster can comment as well.</p>
                </td>
            </tr>
            <tr>
                <td>
                    <h3 style="color:#444">5000 kr</h3>
                </td>

            </tr>
            <tr>
                <td>
                    <h3 style="color:#444">Västerås</h3>
                </td>
            </tr>

            <tr>
                <td width="200px">
                    <h3 style="opacity: 0;">.</h3>
                </td>
            </tr>
            <tr>
                <td>
                    <h3>October 20, 2019</h3>
                </td>
            </tr>
            <tr>
                <td>
                    <h3>4 Comments</h3>
                </td>
            </tr>
        </table>
    </div>
</a>

<!-- Second example -->
<a href="index.php?page=post" style="text-decoration: none;">
    <div id="adBox" class="adBox">
        <table style="text-align:center; margin-top:0px;">
            <tr>
                <td rowspan="7" height="150px" width="250px" style="background-color:black;">
                    <img src="img/img1.jpg" width="100%" height="156px">
                </td>
                <td colspan="2">
                    <h2>Another example of an ad that is much longer than the first one</h2>
                </td>
            </tr>
            <tr>
                <td>
                    <h3 style="color:#444">Computers & peripherals</h3>
                </td>
                <td rowspan="6">
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                        labore et dolore magna aliqua. Sed odio morbi quis commodo odio. Dictumst vestibulum rhoncus est
                        pellentesque elit ullamcorper. Nunc sed blandit libero volutpat sed. Et malesuada fames ac
                        turpis egestas sed tempus. Mauris nunc congue nisi vitae suscipit tellus mauris a. Morbi enim
                        nunc faucibus a pellentesque sit amet porttitor eget. Non nisi est sit amet facilisis magna.
                        Rhoncus urna neque viverra justo nec ultrices. Ultricies leo integer malesuada nunc vel risus
                        commodo viverra maecenas. Et netus et malesuada fames ac turpis egestas. At in tellus integer
                        feugiat scelerisque varius morbi enim nunc. Morbi tincidunt ornare massa eget egestas purus.
                        Pulvinar mattis nunc sed blandit libero volutpat. Nisi lacus sed viverra tellus in hac
                        habitasse.</p>
                </td>
            </tr>
            <tr>
                <td>
                    <h3 style="color:#444">6000 kr</h3>
                </td>
            </tr>
            <tr>
                <td>
                    <h3 style="color:#444">Stockholm</h3>
                </td>
            </tr>
            <tr>
                <td width="200px">
                    <h3 style="opacity: 0;">.</h3>
                </td>
            </tr>
            <tr>
                <td>
                    <h3>October 18, 2019</h3>
                </td>
            </tr>
            <tr>
                <td>
                    <h3>2 Comments</h3>
                </td>
            </tr>
        </table>
    </div>
</a>

<script>
    window.onload = function () {
        getProducts();
    }
</script>
