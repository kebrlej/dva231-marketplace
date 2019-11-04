<div class="background"></div>
<div id="login-box">
{*    onSubmit="return formValidation();"*}
    <form name='registration' >
        <div id="register-group">
            <label for="email" class="glyphicon glyphicon-envelope"></label>
            <input type="text" name="email" placeholder="Email" id="email">
        </div>
        <br>
        <div id="register-group">
            <label for="register" class="glyphicon glyphicon-user"></label>
            <input type="text" name="username" placeholder="Username" id="username">
        </div>
        <br>
        <div id="register-group">
            <label for="register" class="glyphicon glyphicon-asterisk"></label>
            <input type="password" name="password" placeholder="Password" id="password">
        </div>

        <br/>
        <button id="btn-register" name="register" onclick="registerUser()">Register</button>
    </form>
</div>