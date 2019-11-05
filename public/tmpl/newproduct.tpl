<div class="background"></div>

<?php
if (SessionManagement::isLoggedIn()) {
    echo '
        <div id="publishForm">
<h1>Publish new post</h1><br>
<label for="publishtitle" class="glyphicon glyphicon-font"></label>
<input type="text" name="publishtitle" placeholder="Title" id="publishtitle">

<br><br>
<label for="categorydropdrown" class="glyphicon glyphicon-folder-open" style="margin-left:4px"></label>
<div class="btn-group dropdown">
            <button class="btn btn-secondary dropdown-toggle" type="button" data-toggle="dropdown" id="categorydropdown">Category
                <span class="caret"></span></button>
            <div class="dropdown-menu">
                <li><a onclick="onDropdownSelection(\'Vehicles\')">Vehicles</a></li>
                <li><a onclick="onDropdownSelection(\'Garden & outdoor\')">Garden & outdoor</a></li>
                <li><a onclick="onDropdownSelection(\'Furniture\')">Furniture</a></li>
                <li><a onclick="onDropdownSelection(\'Appliences\')">Appliences</a></li>
                <li><a onclick="onDropdownSelection(\'Tools\')">Tools</a></li>
                <li><a onclick="onDropdownSelection(\'Clothes & shoes\')">Clothes & shoes</a></li>
                <li><a onclick="onDropdownSelection(\'Accessories & watches\')">Accessories & watches</a></li>
                <li><a onclick="onDropdownSelection(\'Toys\')">Toys</a></li>
                <li><a onclick="onDropdownSelection(\'Computers & peripherals\')">Computers & peripherals</a></li>
                <li><a onclick="onDropdownSelection(\'Audio & visuals\')">Audio & visuals</a></li>
                <li><a onclick="onDropdownSelection(\'Telephones\')">Telephones</a></li>
                <li><a onclick="onDropdownSelection(\'Experiences & activities\')">Experiences & activities</a></li>
                <li><a onclick="onDropdownSelection(\'Books & litterature\')">Books & litterature</a></li>
                <li><a onclick="onDropdownSelection(\'Bikes\')">Bikes</a></li>
                <li><a onclick="onDropdownSelection(\'Animals\')">Animals</a></li>
                <li><a onclick="onDropdownSelection(\'Collector items\')">Collector items</a></li>
                <li><a onclick="onDropdownSelection(\'Hunting & fishing\')">Hunting & fishing</a></li>
                <li><a onclick="onDropdownSelection(\'Instruments\')">Instruments</a></li>
                <li><a onclick="onDropdownSelection(\'Sport\')">Sport</a></li>
            </div>
        </div>


<label for="publishprice" class="glyphicon glyphicon-tag"></label>
<input type="text" name="publishprice" placeholder="Price" id="publishprice"> kr

<br><br>
<label for="publishlocation" class="glyphicon glyphicon-home"></label>
<input type="text" name="publishlocation" placeholder="Location" id="publishlocation">

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
function onDropdownSelection(category){
    document.getElementById("categorydropdown").textContent = category;
}
</script>
