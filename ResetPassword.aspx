<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResetPassword.aspx.cs" Inherits="aspxForum.ResetPassword" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" />
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="description" content="An open market and forum for everyone! for free!" />
    <title>alTab Developments Market</title>    
    <link href="Assets/css/metro-all.min.css" rel="stylesheet" />
    <link href="Assets/css/designGeneral.css" rel="stylesheet" />
</head>
<body>
<!-- Header -->
<div data-role="appbar" data-expand-point="md" class="Navbar">
    <a class="brand no-hover">
            <img  style="width: 75px;" class="p-2 border bd-dark border-radius" src="Assets/icon.png" />
    </a>
    <ul class="app-bar-menu">
        <li><a href="SignIn.aspx">Go Back</a></li>
    </ul>
</div>
<div class="container-fluid Header">
    <br /><br />
    <h1 class="text-center">alTab Developments</h1>
    <h3 class="text-center">Reset Password</h3>
    <br />
</div>

<%-- Body --%>

<form name="ResetPass" method="post" runat="server" onsubmit="return checkform()" id="ResetPass" >
    <input type="text" data-role="input" data-prepend="Email: " name="email" id="email" />
    <input type="submit" class="button dark outline" value="Submit" name="Submit" id="Submit" />
    <a id="jserrmsg"><asp:Literal runat="server" ID="errmsg" text='' /></a>
</form>


<script src="https://cdn.metroui.org.ua/v4/js/metro.min.js"></script>
</body>
</html>
