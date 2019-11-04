<?php
if (SessionManagement::isLoggedIn()) {
    echo '
        <div id="publishForm">
<h1>Publish new post</h1><br>
<label for="publishtitle" class="glyphicon glyphicon-font"></label>
<input type="text" name="publishtitle" placeholder="Title" id="publishtitle">

<br><br>
<label for="categorydropdrown" class="glyphicon glyphicon-folder-open" style="margin-left:4px"></label>
<div class="dropdown">
    <button id="categorydropdrown" class="btn btn-secondary dropdown-toggle" data-toggle="dropdown" value="text">
        Category
        <span class="caret"></span></button>
    <ul class="dropdown-menu" style="margin-top: -10px;">
        <li><a href="#">Placeholder 1</a></li>
        <li><a href="#">Placeholder 2</a></li>
        <li><a onclick="">Placeholder 3</a>
    </ul>
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
<label for="my-awesome-dropzone" class="glyphicon glyphicon-camera"></label>

<form action="/file-upload"
      class="dropzone"
      id="my-awesome-dropzone"></form>
<br><br>
<button id="btn-login" name="publish" onClick="createNewProduct()">Publish</button>
</div>
';
} else {
echo '
<div id="login-box" style="color:#eee;">Please log in in order to publish a new post.
    <div class="tooltip" style="color:#eee;">Why?
        <span class="tooltiptext">In order to hinder spam as well as allowing you to edit your post.</span>
    </div>

    <br><br>
    <a href="index.php?page=login">
        <button id="btn-login" name="login" ;
        ">Log in</button></a>
    <a href="index.php?page=register">
        <button id="btn-all" name="register" ;
        ">Register</button></a>
</div>';
}
?>
