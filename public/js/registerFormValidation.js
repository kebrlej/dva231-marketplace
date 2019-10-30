function formValidation(){
    
    var uname = document.registration.firstname;
    var usurname = document.registration.lastname;
    var uemail = document.registration.email;
    var uid = document.registration.username;
    var passid = document.registration.password;

    if(userid_validation(uid,5,12)){
        if(passid_validation(passid,7,12)){
            if(allName(uname)){
                if(allSurname(usurname)){
                    if(ValidateEmail(uemail)){
                    }
                }
            }
        }
    }
    return false;
}

function userid_validation(uid,mx,my){
    var uid_len = uid.value.length;
    if (uid_len == 0 || uid_len >= my || uid_len < mx){
        alert("User Id should not be empty / length be between "+mx+" to "+my);
        uid.focus();
        return false;
    }
    return true;
}

function passid_validation(passid,mx,my){
    var passid_len = passid.value.length;
    if (passid_len == 0 ||passid_len >= my || passid_len < mx){
        alert("Password should not be empty / length be between "+mx+" to "+my);
        passid.focus();
        return false;
    }
    return true;
}

function allName(uname){
    var letters = /^[A-Za-z]+$/;
    if(uname.value.match(letters)){
        return true;
    }else{
        alert('Name must have alphabet characters only');
        uname.focus();
        return false;
    }
}

function allSurname(usurname){
    var letters = /^[A-Za-z]+$/;
    if(usurname.value.match(letters)){
        return true;
    }else{
        alert('Last name must have alphabet characters only');
        usurname.focus();
        return false;
    }
}

function ValidateEmail(uemail){
    var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
    if(uemail.value.match(mailformat)){
        return true;
    }else{
        alert("You have entered an invalid email address!");
        return false;
    }
}