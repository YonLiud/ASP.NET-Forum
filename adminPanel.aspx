<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminPanel.aspx.cs" Inherits="aspxForum.adminPanel" %>


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
        <li><a href="default.aspx">Go Back</a></li>
        <li>Account: <asp:Literal ID="usr" runat="server" Text='ERR LOADING ACC' /></li>
    </ul>
</div>
<div class="container-fluid Header">
    <br /><br />
    <h1 class="text-center">alTab Developments</h1>
    <h3 class="text-center">Admin Control Panel</h3>
    <br />
</div>

<%-- STATISTICS --%>
    <%-- Users --%>
<div class="card">
    <div class="card-header">
        Amount Of Users:
    </div>
    <div class="card-content p-2">
        <asp:Literal ID="usrNum" runat="server" Text='ERR LOADING USR NUMBER' />
    </div>
<%--    <div class="card-footer">
        Card Footer
    </div>--%>
</div>
    <%-- Admins --%>
<div class="card">
    <div class="card-header">
        Amount Of Admins:
    </div>
    <div class="card-content p-2">
        <asp:Literal ID="admnNum" runat="server" Text='ERR LOADING ADMIN NUMBER' />
    </div>
<%--    <div class="card-footer">
        Card Footer
    </div>--%>
</div>




<%-- END STATISTICS --%>
<script src="https://cdn.metroui.org.ua/v4/js/metro.min.js"></script>
</body>
</html>