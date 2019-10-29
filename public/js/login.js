function loginUserCallback(data, textStatus) {

    response = JSON.parse(data);

    if (response.success === true) {
        //redirect
        window.location.href = "index.php";
    } else {
        //display warning
        var hello = 10;
    }
    var x = 10;
}

function logoutUserCallback(data, textStatus) {

    var x = 10;
    window.location.href = "index.php";
}


function loginUser() {
    //extract user data

    var username = jQuery("#username");
    var password = jQuery("#password");

    //TODO error checking
    var data = {
        username: username.val(),
        password: password.val()
    };

    sendPostRequest("api.php/users/login",
        data, loginUserCallback)
}

function logoutUser() {
    sendPostRequest('api.php/users/logout', null, logoutUserCallback)
}