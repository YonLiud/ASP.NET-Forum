<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="aspxForum.SignIn" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign In</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link href="Assets/css/StyleSheet1.css" rel="stylesheet" />
    <link href="Assets/css/StyleSheet1.min.css" rel="stylesheet" />
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
<div class="wrapper fadeInDown">
    <div id="formContent">
         <div class="fadeIn first">
          <img src="Assets/icon.png" id="icon" alt="User Icon" />
             <br />
          <b><a id="jserrmsg" style="color: red;"><asp:Literal ID="errmsg" runat="server" Text='' /></a></b>
         </div> 
        <form name = "myForm" method = "post" runat = "server"    onsubmit = "return checkForm()" id="form"> 
            <input type="text" id="login" class="fadeIn second" name="login" placeholder="Username" />
            <input type="password" id="password" class="fadeIn third"  name="password" placeholder="Password" />
            <input type="submit" class="fadeIn fourth" value="Log In" id="submitButton" name="Submitbtn" />
    <div id="formFooter">
      <a class="underlineHover" href="SignUp.aspx">Don't Have an Account?</a>
        <br />
      <a class="underlineHover" href="ResetPassword.aspx">Forgot Password?</a>
    </div>
        </form>
        <script src="Assets/js/SignIn-Checker.js"></script>
    </div>
</div>
</body>
</html>
