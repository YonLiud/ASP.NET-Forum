
function checkForm() {
    var username = document.forms["form"]["usernameInput"];
    var email = document.forms["form"]["emailInput"];
    var password = document.forms["form"]["passwordInput"];
    var passwordV = document.forms["form"]["passwordValid"];

    //Username
    var usr = /^[A-Za-z]\w{6,15}$/;

    if (username.value == "") {
        document.getElementById("jserrmsg").innerHTML = "Insert Wanted Username"
        username.focus();
        return false;
    }

    if (usr.test(username.value) == false) {
        document.getElementById("jserrmsg").innerHTML = 'The username must be between 7 to 14 characters and no special characters'
        username.focus();
        return false;
    }

    //Email
    var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;

    if (email.value == "") {
        document.getElementById("jserrmsg").innerHTML = "Insert Wanted Email"
        email.focus();
        return false;
    }

    if (reg.test(email.value) == false) {
        document.getElementById("jserrmsg").innerHTML = 'The Email is invalid'
        email.focus();
        return false;
    }


    //Password
    var passw = /^[A-Za-z]\w{6,15}$/;

    if (password.value == "") {
        document.getElementById("jserrmsg").innerHTML = "Insert Wanted Password"
        password.focus();
        return false;
    }

    if (passw.test(password.value) == false) {
        document.getElementById("jserrmsg").innerHTML = 'Password must be between 7 to 14 characters and no special characters'
        password.focus();
        return false;
    }

    if (password.value != passwordV.value) {
        document.getElementById("jserrmsg").innerHTML = "The Verification Password does not match the original password"
        passwordV.focus();
        return false;
    }
    return true;
}