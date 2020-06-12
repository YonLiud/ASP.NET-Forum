<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="aspxForum.SignUp" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link href="Assets/css/StyleSheet1.css" rel="stylesheet" />
    <link href="Assets/css/StyleSheet1.min.css" rel="stylesheet" />
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script>
        window.onload = function () {
            const PassV = document.getElementById('passwordValid');
            PassV.onpaste = function (e) {
                e.preventDefault();
                document.getElementById("jserrmsg").innerHTML = "אסור להדביר סיסמא אחרת";
            }
            const Pass = document.getElementById('passwordInput');
            Pass.onpaste = function (e) {
                e.preventDefault();
                document.getElementById("jserrmsg").innerHTML = "אסור להדביק סיסמא אחרת!";
            }
        }
    </script>
</head>
<body>
<div class="wrapper fadeInDown">
    <div id="formContent">
         <div class="fadeIn first">
          <img src="Assets/icon.png" id="icon" alt="Icon" />
             <br />
          <b><a id="jserrmsg" style="color: red;"><asp:Literal ID="errmsg" runat="server" Text='' /></a></b>
         </div>
    <form name="myForm" method="post" runat="server" onsubmit=" return checkForm()" id="form">
        <input type="text" name="usernameInput" id="usernameInput" class="fadeIn second" placeholder="username" />
        <input type="text" name="emailInput" id="emailInput" class="fadeIn second" placeholder="email" />
        <input type="password" name="passwordInput" id="passwordInput" class="fadeIn third" placeholder="Password" />
        <input type="password" id="passwordValid" class="fadeIn third" placeholder="Verify Password" />
        <p class="fadeIn fourth">By Registering You Agree To Our Terms Of Use</p>
        <input type="button"  class="fadeIn fourth" value="Terms Of Use" onclick="window.open('https://www.google.com/', '_blank');" />
        <input type="submit" class="fadeIn fourth" value="Register" id="submitButton" name="Submitbtn" />
    </form>
    <div id="formFooter">
      <a class="underlineHover" href="SignIn.aspx">Have an Account Already?</a>
    </div>
        <script src="Assets/js/SignUp-Checker.js"></script>
    </div>
</div>
</body>
</html>
