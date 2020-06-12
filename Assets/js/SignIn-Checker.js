function checkForm() {
    var login = document.forms["form"]["login"];
    var password = document.forms["form"]["password"];
    if (login.value == "") {
        document.getElementById("jserrmsg").innerHTML = "Insert Username"
        login.focus();
        return false;
    }
    if (password.value == "") {
        document.getElementById("jserrmsg").innerHTML = "Insert Password"
        password.focus();
        return false;
    }
    return true;
}