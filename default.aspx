<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="aspxForum.Assets.WebForm1" %>

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
        <%--<li><a href="https://altab.dev/">Home Site</a></li>--%>
        <li><a href="#">Blog</a></li>
        <li><a href="#">Contacts</a></li>
        <li>

            <a href="#" class="dropdown-toggle">Account: <asp:Literal ID="usr" runat="server" Text='ERR LOADING ACC' /></a>

            <!-- NOT REGISTERED MENU -->
            <ul class="d-menu" data-role="dropdown" id="nonRegMenu" runat="server">
                <li><a href="signin.aspx">Sign In</a></li>
                <li><a href="signup.aspx">Sign Up</a></li>
            </ul>

            <%-- REGISTERED MENU --%>
            <ul class="d-menu" data-role="dropdown" id="RegMenu" runat="server">
                <li><a href="useredit.aspx">Edit Account</a></li>
                <li><a href="#">Sign Out</a></li>
                <li class="divider bg-lightGray"></li>
                <li runat="server" id="adminq"><a href="#">Admin Control Panel</a></li>
            </ul>

        </li>

    </ul>
</div>
<div class="container-fluid Header">
    <br /><br />
    <h1 class="text-center">alTab Developments</h1>
    <h3 class="text-center">The Open Market <br />For every consumer</h3>
    <br />
</div>
<!-- Body - False -->
<div runat="server" id="nonReg" class="container">
    <h1>About alTab's Open Market</h1>
    <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>

    <h2>To Access the market, Please Sign In</h2>
</div>

<!-- Body - True -->
<div runat="server" id="Reg" class="container">
    <h1>About alTab's Open Market</h1>
    <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>

    <h2>Thank you for signing in</h2>
</div>

<script src="https://cdn.metroui.org.ua/v4/js/metro.min.js"></script>
</body>
</html>
