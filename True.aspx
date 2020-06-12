<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="True.aspx.cs" Inherits="aspxForum.Assets.WebForm1" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta name="description" content="An open market and forum for everyone! for free!" />
        <title>Landing Page &ndash; Layout Examples &ndash; Pure</title>    
        <link rel="stylesheet" href="https://unpkg.com/purecss@1.0.1/build/pure-min.css" integrity="sha384-" crossorigin="anonymous" />
        <link rel="stylesheet" href="https://unpkg.com/purecss@1.0.1/build/grids-responsive-old-ie-min.css" />
        <link rel="stylesheet" href="https://unpkg.com/purecss@1.0.1/build/grids-responsive-min.css" />
        <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" />
        <link rel="stylesheet" href="assets/css/marketing-old-ie.css" />
        <link rel="stylesheet" href="assets/css/marketing.css" />
</head>

<body>
<div class="header">
    <div class="home-menu pure-menu pure-menu-horizontal pure-menu-fixed">
        <a class="pure-menu-heading">Yon Liud's Website</a>
        <a class="pure-menu-heading">Welcome <a class="pure-menu-selected"><asp:Literal ID="usr" runat="server" Text='' /></a></a>
    </div>
</div>
<div class="splash-container">
    <div class="splash">
        <h1 class="splash-head">Thank You for Signing In</h1>
        <p class="splash-subhead">
            Lorem ipsum dolor sit amet, consectetur adipisicing elit.
        </p>
    </div>
</div>
</body>
</html>
