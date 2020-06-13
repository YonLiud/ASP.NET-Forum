checkform() {
    var usr = /^[A-Za-z]\w{6,15}$/;
    var pass1 = document.forms["passReset"]["passwordp"];
    var pass2 = document.forms["passReset"]["passwordr"];
    if (pass1 != pass2) {
        document.getElementById("jserrmsg").innerHTML = "The Passwords Do Not Match!";
        pass1.focus();
        return false;
    } else {
        if (usr.test(username.value) == false) {
            document.getElementById("jserrmsg").innerHTML = 'The password must be between 7 to 14 characters and no special characters';
            username.focus();
            return false;
        } else {
            return true;
        }
    }
}