<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="useredit.aspx.cs" Inherits="aspxForum.ctrlpanel" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" />
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <title>alTab - Control Panel</title>
    <link href="Assets/css/metro-all.min.css" rel="stylesheet" />
    <link href="Assets/css/designGeneral.css" rel="stylesheet" />
</head>
<body>
<%-- Header --%>
<div data-role="appbar" data-expand-point="md" class="Navbar">
    <a class="brand no-hover">
            <img  style="width: 75px;" class="p-2 border bd-dark border-radius" src="Assets/icon.png" />
    </a>
    <ul class="app-bar-menu">
        <li><a href="default.aspx">Home Site</a></li>
        <li class="board no-hover">
            <a><asp:Literal ID="usr" runat="server" Text='ERR LOADING ACC' /></a>
        </li>
        <li class="board no-hover">
            <a><asp:Literal ID="Prm" runat="server" Text='ERR LOADING PRM' /></a>
        </li>

    </ul>
</div>
<div class="container-fluid Header">
    <br /><br />
    <h1 class="text-center">alTab Developments</h1>
    <h3 class="text-center">User Management Panel</h3>
    <br />
</div>
 
<%-- User Control --%>

<%-- PASSWORD --%>
<fieldset id="fieldset">
        <legend><h1>Change Password</h1></legend>
    <a id="jserrmsg"><asp:Literal runat="server" ID="errmsg" text='' /></a>
<form name="passReset" method="post" runat="server" onsubmit="return checkform()" id="passReset" >
    <input type="text" data-role="input" data-prepend="New Password: " name="passwordp" id="passwordp" />
    <input type="text" data-role="input" data-prepend="Confirm New Password: " name="passwordr" id="passwordr" />
    <input type="text" data-role="input" data-prepend="Previous Password: " name="passwordrp" id="passwordrp" />
    <input type="submit" class="button dark outline" value="Submit" name="Submitbtnp" id="Submitbtnp" />
</form>
</fieldset>
    <script src="Assets/js/edituser-Checker.js"></script>
<script src="https://cdn.metroui.org.ua/v4/js/metro.min.js"></script>
</body>
</html>
