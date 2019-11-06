<div class="background"></div>


<!-- First example -->
<div id="fullAd" class="fullAd">
    <!-- <img src="css/img1.jpg" width="60%" style=" display: block; margin-left: auto; margin-right: auto;"> -->
    <p style="text-align:right;margin-right:50px;">
        <a href="#comments">Comments</a> | <a id="follow-delete-button"></a>
    </p>

    <div id="image-slider" class="w3-content w3-display-container" style="max-width:800px;">
        <div class="w3-center w3-container w3-section w3-large w3-text-white w3-display-bottommiddle"
             style="width:100%">
            <div class="w3-left w3-hover-text-khaki" onclick="plusDivs(-1)">&#10094;</div>
            <div class="w3-right w3-hover-text-khaki" onclick="plusDivs(1)">&#10095;</div>
            <span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(1)"></span>
            <span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(2)"></span>
        </div>
    </div>
    <br>
    <div class="container">
        <div class="row">
            <div class="col-sm-12" >
                <h1 style="font-weight: 900;" id="postTitle"></h1>
                <hr style="height:1px;border:none;color:#333;background-color:#333; width: 800px;">
            </div>
        </div>
        <div class="row">
            <div class="col-sm-6">
                <label class="glyphicon glyphicon-tag" id="postPrice" style="font-size: 25px"></label>
            </div>
            <div class="col-sm-6">
                <label class="glyphicon glyphicon-calendar" id="postDate" style="font-size: 25px;"></label>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-6">
                <label id="postLocation" class="glyphicon glyphicon-home" style="font-size: 25px"></label>
            </div>
            <div class="col-sm-6">
                <label  id="postUser" class="glyphicon glyphicon-user" style="font-size: 25px"></label>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12">
                <label class="glyphicon glyphicon-envelope" id="postEmail" style="font-size: 25px"></label>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12">
                <hr style="height:1px;border:none;color:#333;background-color:#333; width: 800px;">
                <p id="postDescription"><br></p>
            </div>
        </div>
    </div>
    <table width=800px; style="margin-right:auto; margin-left:auto">
      <!--  <tr>
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
        </tr> -->
        <tr>
            <td colspan=2>
                        <div id="map">  </div>
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
    window.onload = displayProductDetails

</script>