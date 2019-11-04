<div class="background"></div>

<div id="publishForm">
        <h1>User settings</h1><br>
        <label for="changeUsername" class="glyphicon glyphicon-user"></label>
        &nbsp;&nbsp;&nbsp; <?php echo $_SESSION['username'] ?>
        <br><br>
        <label for="changeUsername" class="glyphicon glyphicon-envelope"></label>
        <input type="text" name="changeUsername" placeholder="Change email" id="changeUsername" class="formLabel">
        <br><br>
        <label for="changeUsername" class="glyphicon glyphicon-asterisk"></label>
        <input type="text" name="changeUsername" placeholder="Change password" id="changeUsername" class="formLabel">

        <br><br>
        <button id="btn-login" name="publish" onClick="newProduct()";>Apply</button>
        </div>