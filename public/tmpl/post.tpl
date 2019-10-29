<div class="background"></div>


<!-- First example -->
<div id="fullAd" class="fullAd">
    <!-- <img src="css/img1.jpg" width="60%" style=" display: block; margin-left: auto; margin-right: auto;"> -->
    <p style="text-align:right;margin-right:50px;"><a href="#comments">Comments</a> | <a href="#">Follow</a></p>


    <div class="w3-container">
    </div>

    <div class="w3-content w3-display-container" style="max-width:800px;">
        <img class="mySlides" src="img/img1.jpg" style="width:100%; max-height:540px;">
        <img class="mySlides" src="img/img2.jpg" style="width:100%; max-height:540px;">
        <div class="w3-center w3-container w3-section w3-large w3-text-white w3-display-bottommiddle"
             style="width:100%">
            <div class="w3-left w3-hover-text-khaki" onclick="plusDivs(-1)">&#10094;</div>
            <div class="w3-right w3-hover-text-khaki" onclick="plusDivs(1)">&#10095;</div>
            <span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(1)"></span>
            <span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(2)"></span>
        </div>
    </div>

    <script>
        var slideIndex = 1;
        showDivs(slideIndex);

        function plusDivs(n) {
            showDivs(slideIndex += n);
        }

        function currentDiv(n) {
            showDivs(slideIndex = n);
        }

        function showDivs(n) {
            var i;
            var x = document.getElementsByClassName("mySlides");
            var dots = document.getElementsByClassName("demo");
            if (n > x.length) {slideIndex = 1}
                if (n < 1) {slideIndex = x.length}
                    for (i = 0; i < x.length; i++) {
                        x[i].style.display = "none";
                    }
            for (i = 0; i < dots.length; i++) {
                dots[i].className = dots[i].className.replace(" w3-white", "");
            }
            x[slideIndex - 1].style.display = "block";
            dots[slideIndex - 1].className += " w3-white";
        }
    </script>
    <table width=800px; style="margin-right:auto; margin-left:auto">
        <tr>
            <td colspan=2>
                <h1>Title of the ad</h1>
            </td>
        </tr>
        <tr>
            <td>
                <h4>Price</h4>
            </td>
            <td style="text-align:right">
                <h4>Post date</h4>
            </td>
        </tr>
        <tr>
            <td>
                <h4>Location</h4>
            </td>
            <td style="text-align:right">
                <h4>Poster's name</h4>
            </td>
        </tr>
        <tr>
            <td colspan=2 style="text-align: justify;">
                <p><br>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                    labore et dolore magna aliqua. Sed odio morbi quis commodo odio. Dictumst vestibulum rhoncus est
                    pellentesque elit ullamcorper. Nunc sed blandit libero volutpat sed. Et malesuada fames ac turpis
                    egestas sed tempus. Mauris nunc congue nisi vitae suscipit tellus mauris a. Morbi enim nunc faucibus
                    a pellentesque sit amet porttitor eget. Non nisi est sit amet facilisis magna. Rhoncus urna neque
                    viverra justo nec ultrices. Ultricies leo integer malesuada nunc vel risus commodo viverra maecenas.
                    Et netus et malesuada fames ac turpis egestas. At in tellus integer feugiat scelerisque varius morbi
                    enim nunc. Morbi tincidunt ornare massa eget egestas purus. Pulvinar mattis nunc sed blandit libero
                    volutpat. Nisi lacus sed viverra tellus in hac habitasse.

                    Lacus vel facilisis volutpat est velit egestas dui id ornare. Nulla malesuada pellentesque elit eget
                    gravida cum sociis natoque penatibus. Suscipit tellus mauris a diam maecenas. Pharetra sit amet
                    aliquam id diam maecenas. At tempor commodo ullamcorper a lacus vestibulum sed. Mattis enim ut
                    tellus elementum sagittis vitae. Vulputate enim nulla aliquet porttitor lacus. Arcu ac tortor
                    dignissim convallis. Sit amet venenatis urna cursus eget nunc scelerisque. Nunc mi ipsum faucibus
                    vitae aliquet nec. Quis varius quam quisque id. Sollicitudin tempor id eu nisl nunc mi ipsum. Sem et
                    tortor consequat id porta. Orci ac auctor augue mauris augue neque. Dictum at tempor commodo
                    ullamcorper a lacus vestibulum sed. Faucibus pulvinar elementum integer enim neque. Adipiscing elit
                    duis tristique sollicitudin nibh sit amet commodo. Maecenas accumsan lacus vel facilisis volutpat
                    est velit egestas.</p>
                <br>
            </td>
        </tr>
        <tr>
            <td colspan=2>
                <img src="img/img3.png" width=80% style=" display: block; margin-left: auto; margin-right: auto;">
            </td>
        </tr>
    </table>
</div>
<div id="comments" class="fullAd" style="padding:10px;">
    <b style="margin-left:10px;">Filip: </b>This is a comment. <a style="float:right;">Reply</a>
</div>
<div id="fullAd" class="fullAd" style="padding:10px;">
    <b style="margin-left:10px;">Jan: </b>This is also a comment. <a style="float:right;">Reply</a>
</div>
<button id="btn-comment" style="margin-bottom:100px;">Comment</button>