<div class="background"></div>


<!-- First example -->
<div id="fullAd" class="fullAd">
    <!-- <img src="css/img1.jpg" width="60%" style=" display: block; margin-left: auto; margin-right: auto;"> -->
    <p style="text-align:right;margin-right:50px;">
        <a href="#comments">Comments</a> | <a href="#" id="followOrDelete">Follow</a>
    </p>

    <div class="w3-content w3-display-container" style="max-width:800px;">
        <img class="image-slides" src="img/img1.jpg">
        <img class="image-slides" src="img/img2.jpg">
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
            var x = document.getElementsByClassName("image-slides");
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
                <h1 id="postTitle"></h1>
            </td>
        </tr>
        <tr>
            <td>
                <h4 id="postPrice"></h4>
            </td>
            <td style="text-align:right">
                <h4 id="postDate"></h4>
            </td>
        </tr>
        <tr>
            <td>
                <h4 id="postLocation"></h4>
            </td>
            <td style="text-align:right">
                <div class="tooltip-bottom" style="color:#333;"><h4>Poster's name</h4>
                    <span class="tooltiptext"></span>
                </div>

            </td>
        </tr>
        <tr>
            <td colspan=2 style="text-align: justify;">
                <p id="postDescription"><br></p>
                <br>
            </td>
        </tr>
        <tr>
            <td colspan=2>
                <!-- TODO PUT MAP HERE -->
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

<script>
    window.onload = getSingleProduct
</script>