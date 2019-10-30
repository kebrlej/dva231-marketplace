<div class="background"></div>
<div id="register-box">
    <form name='registration' onSubmit="return formValidation();">
        <div id="register-group">
            <label for="firstname" class="glyphicon glyphicon-user"></label>
            <input type="text" name="firstname" placeholder="First name" id="register">
        </div>
        <br>
        <div id="register-group">
            <label for="lastname" class="glyphicon glyphicon-user"></label>
            <input type="text" name="lastname" placeholder="Last name" id="register">
        </div>
        <br>
        <div id="register-group">
            <label for="email" class="glyphicon glyphicon-envelope"></label>
            <input type="text" name="email" placeholder="Email" id="register">
        </div>
        <br>


        <div id="register-group">
            <label for="register" class="glyphicon glyphicon-user"></label>
            <input type="text" name="username" placeholder="Username" id="register">
        </div>
        <br>
        <div id="register-group">
            <label for="register" class="glyphicon glyphicon-asterisk"></label>
            <input type="password" name="password" placeholder="Password" id="register">
        </div>

        <br/>
        <button id="btn-register" name="register">Register</button>
    </form>
</div>