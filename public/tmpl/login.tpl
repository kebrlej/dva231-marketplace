<div class="background"></div>
<div id="login-box">

        <div id="login-group">
            <label for="username" class="glyphicon glyphicon-user"></label>
            <input type="text" name="username" placeholder="Username" id="username" class="username">
        </div>
        <br>
        <div id="login-group">
            <label for="password" class="glyphicon glyphicon-asterisk"></label>
            <input type="password" name="password" placeholder="Password" id="password">
        </div>
        <br/>
        <button id="btn-login" name="login" onclick="loginUser()">Log in</button>
        <button id="btn-all" name="register" onclick="location.href = 'index.php?page=register';">Register</button>
        <br><br>
        <div class="tooltip-bottom" style="color:#eee;">Trouble logging in?
        <span class="tooltiptext">Please contact us through the link below.</span>
        </div>

</div>