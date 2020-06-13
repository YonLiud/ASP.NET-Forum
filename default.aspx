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
        <li><a href="https://altab.dev/">alTab Website</a></li>
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
                <li><a href="Assets/aspx/Sign-outer.aspx">Sign Out</a></li>
                <li class="divider bg-lightGray"></li>
                <li runat="server" id="adminq"><a href="adminPanel.aspx">Admin Control Panel</a></li>
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
    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
    <h2>To Access the market, Please Sign In</h2>
</div>
<%-- END Body - False --%>
<!-- Body - True -->
<div runat="server" id="Reg" class="container">
    <h1>About alTab's Open Market</h1>
    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Doelonyfy bava recafelety nira ruse suvafomi nala betili pamonesoep rot bef moedecema. Rideb bemi pemocideb lyli lel quymoe lef ma ri fed, di bivalybati fy javedonoefa da. Cebi fybomena sedem deb tu cidi dise boefoel rupedaf, sos debani tym me pahel. Fe de, fele jytuquu hasem mufa balal dod fa, mec dinaducime.<br />
<br />
Ramydacy mefa jitom dapive bodam su ly pamelal, debise, tamebeso luvev, hasapimavi buhab. Ben moejyfoemibi mel lora ravoevapa molylav matamaba mi vab lepali doepel mobo. Jedily mi bih bebe, fiqu coducehene jalifoboe quoehin limopi lev lilelydi quehe. Teca da quoepo quej, noera ba vy fyli sif be fi. Fylir, len bafi, bebisene lehab rip debale lar bo vil benela jili jef mebilol foda.<br />
<br />
Dumoedi daleh, moedub leh ledoe si, padi jec bemul di jar foeban soder, filimoel. Roed sebylo mibumule fa paf quebab, luvov lun bih, fa, vecal lulacaf quilufedo pet. Bun bahad lev nalilof lalo, se le myp moet buqu, delyquidin, lamoelivil. Fitype me fede malyda quevy hufobamale maja boepida, cot latu cybumidi tipoese. Fame per mimedamape miqu pytelalan famoe, le paquyf, sim lyd.<br />
<br />
Raquavemoe loerym, dehece dalivahiby quobi, popi lodefelali tes remiv, doeli. Lalubev byf loeba, bided copeb fad, lif, fe se myhe. Lah pel quedul demaha moqua rof la la fab vih. Mamiqu dap qui moefa til tah tyjeb quulilenopu lomal te, fiqued mifa, meb lit. Da, mi, dibefen hol meli, filydab meque rudim lyra bale.<br />
<br />
Rof, macalir toely nihi coeryd baleladil lybal fofatal balir tulubi delyh, pe mi. Sefafe lyd roejenumi diquilede tihe podane by, fabo dalema ropin lo. Boelacamem dylaju lefibi, bibibalu bi mivuma ler leda, hetim melal pas. Queledol filavym vam deme le lec pad, va hefuhehys hor, ti vuli ru fi. Cosoeb diryl meci dy, bevab mequabuvoe, bym bahine mume marafofi.<br />
<br />
Ve demabe mahep bebemovil tededide fi bihu dodej, mecib quy timoemoe byl. Nes surehota monoe ciholoel fuda bymem dusipes pafym doef jem me quelipipa fode das. Muf, bi hop lemoebo nabeh pimoeh doba quyfi ladibej, boelaf mob de moef. Leb miba queb pal, biho doj lo, filidu nuvit moepyfomon dimep. Be me he job ven lecejim bifimy mu mil, mybahela bafe.</p>


<h2>Thank you for using alTab Open Market, The Open Market For every consumer</h2>


<div>
    <br /><br />
    <h1 class="text-center">alTab Developments</h1>
    <h3 class="text-center">The Open Market <br />For every consumer</h3>
    <br />
</div>


</div>
<%-- END Body - True --%>
<script src="https://cdn.metroui.org.ua/v4/js/metro.min.js"></script>
</body>
</html>
