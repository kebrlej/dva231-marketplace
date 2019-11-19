function loginUserCallback(data, textStatus) {
    response = JSON.parse(data);

    if (response.success === true) {
        //redirect
        saveToLocalStorage("userId",response.data.id);
        saveToLocalStorage("username",response.data.username);
        loadUserFavoriteProducts();
        window.location.href = "index.php";
    } else {
        //display warning
        var hello = 10;
    }
    var x = 10;
}

function logoutUserCallback(data, textStatus) {
    window.localStorage.clear();
    window.location.href = "index.php";
}


function loginUser() {
    //extract user data

    var username = jQuery("#username");
    var password = jQuery("#password");

    var data = {
        username: username.val(),
        password: password.val()
    };

    //TODO error checking
    // if (loginValidation(data.username,data.password) == true){
    // }
    sendPostRequest("api.php/users/login",
        data, loginUserCallback)

}

function logoutUser() {
    sendPostRequest('api.php/users/logout', null, logoutUserCallback)
}

function loginValidation(uid, passid){

    if(userid_login(uid,5,12)){
        if(passid_login(passid,7,12)){
        }
    }
    return false;
}

function userid_login(uid,mx,my){
    var uid_len = uid.length;
    if (uid_len == 0 || uid_len >= my || uid_len < mx){
        alert("User Id should not be empty / length be between "+mx+" to "+my);

        return false;
    }
    return true;
}

function passid_login(passid,mx,my){
    var passid_len = passid.length;
    if (passid_len == 0 ||passid_len >= my || passid_len < mx){
        alert("Password should not be empty / length be between "+mx+" to "+my);

        return false;
    }
    return true;
}