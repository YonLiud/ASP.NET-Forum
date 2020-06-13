checkForm() {
    var pass1 = document.forms["passReset"]["passwordp"];
    var pass2 = document.forms["passReset"]["passwordr"];
    if (pass1 != pass2) {
        document.getElementById("jserrmsg").innerHTML = "The Passwords Do Not Match!";
        pass1.focus();
        return false;
    } else {
        return true;
    }
}