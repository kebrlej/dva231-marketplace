function registerUserCallback(data, textStatus) {
    response = JSON.parse(data);

    if (response.success === true) {
        //redirect
        loginUser();
        window.location.href = "index.php";
    } else {
        //display warning
        var hello = 10;
    }
    var x = 10;
}

function registerUser() {
    //extract user data
    // formValidation();
    if (true) {

        var x = 10;
        var email = jQuery("#email");
        var username = jQuery("#username");
        var password = jQuery("#password");

        var data = {
            email: email.val(),
            username: username.val(),
            password: password.val()
        };

        sendPostRequest("api.php/users/register",
            data, registerUserCallback)
    }

}