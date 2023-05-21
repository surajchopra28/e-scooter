<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home page.aspx.cs" Inherits="home_page" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>E-Scooters.com</title>
<script type="text/javascript">
    function validateForm() {
        var x = document.forms["suraj"]["email"].value;
        var atpos = x.indexOf("@");
        var dotpos = x.lastIndexOf(".");
        if (atpos < 1 || dotpos < atpos + 2 || dotpos + 2 >= x.length) {
            alert("Not a valid e-mail address");
            return false;
        }
        var x = document.forms["suraj"]["email"].value;
        if (x != null && name != "") {
            alert("Your form has been submitted");
        }
    }

</script>
<link href="Styles/Basic_css.css" rel="stylesheet" type="text/css" />
<style type="text/css">
body 
{
background-image: url(images/img22.jpg);
margin: 0;
font-family: Arial,
}
.table1 {
border-style: none;
border-color: inherit;
border-width: medium;
margin-left: 85px;
padding: 10px;
margin-bottom: 30px;
width: 1048px;
}
.columns {
float:left;
width: 33%;
padding: 5px;
}
</style>
</head>
<body>
<form id="form1" runat="server">
<div>
<div class="topnav">
<a href="About us.html">About Us</a>
<a href="Login page.html">Admin Login</a>
<a href="contactus.aspx">Contact us</a>
<div style="margin-right:23.5%; font-size:xx-large; font-style:italic; font-weight:bolder; color:White;"><marquee>WELCOME  To  E-Scooters.com</marquee></div>
</div>
<div style="margin-left:20px; height:400px; width:750px; position:absolute;">
<h1><font color="maroon"><i><u>The bussiness starts with a WILL</u></i></font></h1>
<p><font size="+1"; color="black">The increased pollution had alerted the government. The continous use of Automobiles has led to rapid advance
 in air pollution. This alrming news has rendered the productivity of new technologies that does not rely on gas. This new source of fuel is
 electricity. Our company <a href="About us.html"><font color="maroon">"Eco Ride"</font></a> had taken this problem seriously and have produced
 "E-scooters" or "Electric scooters". These scooters are highly economical and convinient. These scooter can be used by common citizens
 <i>where and whenever</i> they want. People can control the scooters via specific app designed by our company. We offer our scooters for rent
 to the people and earn money through it. Our company have contacts with special groups of people, who opt to charge our e-scooters with a
 reasonable amount. Moreover, our company provides paid professional classes for the people who do not know how to ride. The money we earn from
 the classes are invested in upgrading our scooters or buying new ones.<br><br> We have several contacts with the agencies that are willing to
 sign a contract with us. In the contract, it will be agreed that we will provide them with e-scooters along with maintainance throughout the
 year. On the other hand, the agency can pay half of the money in advance and rest after 6 months. Most of these agencies are the big companies
 in which the employees requires a communication mean to travel from one block to another.</p>
</div>
<div style="margin-left:780px; height:200px; width:250px; margin-top:86px; position:absolute;">
<img src="images/city.jpg" style="width:550px; height:320px;">
</div>
<div style="margin-left:582px; margin-top:500px; height:400px; width:750px; position:absolute">
<h1 style= "color:Maroon"><i>E-Scooters and Environment Conservation</i></h1>
<p style="text-align:justify;"><font size="+1"; color="black";>In todays world everyone is so exited about new technologies and every person wants 
to opt them besides understanding its impact on Environment , So the aproach would be beneficial if product inventing, manufacturing or upgrading 
companies should try to save the Environment and led its conservation towards environment. The general people don't recognize the impact of new 
technologies even if some recognize it they stay away from lending themselves from environment conservation. Besides, our Scooters play vital role 
in saving the environment because the are completely fuel efficient and some are even fuel free vehicles ,Yes some of our scooters don't need fuel to be 
 driven.<br /><br />so, we deeply imply to all are customers or would be customers to contribute in environment conservation by buying our E-Scooters 
 and to stay happy by feeling that the have done their part of contribution in environment conservation if any one interested in buying our E-Scooter can
  click on <a href="contactus.aspx"><font color="maroon">Contact Us</font></a></font></p>
</div>
<div style="margin-left:20px; margin-top:520px; height:200px; width:250px; position:absolute;">
<img src="images/city1.jpg" style="width:550px; height:320px;" />
</div>
<div>
<h2 style="margin-left:500px; margin-top:870px;"><font color="red"> A look at our Scooters!</font></h2>
    <table style="width:100%;">
        <tr>
            <td>
                <div class="columns" >
            <img src="images/escooter1.jpg" style="height:300px; width:300px;">
                <br />
                    <br />
                    <div style="width: 299px"><b><i>
                    <li>Model No: SC001A</li>
                    <li>Model Name: SCROOSER</li>
                    </i></b></div>
                <br />
                <asp:Button ID="Button1" runat="server" BackColor="Blue" BorderColor="Black" 
                    BorderStyle="Outset" ForeColor="White" onclick="Button1_Click" 
                        Text="See More >>" onclientclick="SC001A" />
                <br />
                </div>
                &nbsp;</td>
            <td>
                <div class="columns" style="margin-left:-150px">
            <img src="images/img2.jpg" style="height:300px; width:320px;">
                <br />
                    <br />
                <div style="width: 299px"><b><i>
                <li>Model No: SC002B</li>
                <li>Model Name: RAZOR</li>
                </i></b></div>
                <br />
                <asp:Button ID="Button2" runat="server" BackColor="Blue" BorderColor="Black" 
                    BorderStyle="Outset" ForeColor="White" onclick="Button2_Click" 
                        Text="See More &gt;&gt;" onclientclick="SC002B" />
                <br />
                </div>
                &nbsp;</td>
            <td>
            <div class="columns" style="margin-left:-190px">
            <img src="images/img8.jpg" style="height:300px; width:500px;">
                <br />
                <br />
                <div style="width: 299px"><b><i>
                <li>Model No: SC003C</li>
                <li>Model Name: LIME</li>
                </i></b></div>
                <br />
                <asp:Button ID="Button3" runat="server" BackColor="Blue" BorderColor="Black" 
                    BorderStyle="Outset" ForeColor="White" onclick="Button3_Click" 
                    Text="See More >>" onclientclick="SC003C" />
                </div>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
            <div class="columns">
            <img src="images/img5.jpg" style="height:300px; width:300px;">
                <br />
                <br />
                <div style="width: 299px"><b><i>
                <li>Model No: SC004D</li>
                <li>Model Name: ECO-RECO(S5)</li>
                </i></b></div>
                <br />
                <asp:Button ID="Button4" runat="server" BackColor="Blue" BorderColor="Black" 
                    BorderStyle="Outset" ForeColor="White" onclick="Button4_Click" Text="See More >>" />
                <br />
                </div>
                &nbsp;</td>
            <td>
            <div class="columns" style="margin-left:-150px">
            <img src="images/img6.jpg" style="height:300px; width:400px">
                <br />
                <br />
                <div style="width: 299px"><b><i>
                <li>Model No: SC005E</li>
                <li>Model Name: RAZOR</li>
                </i></b></div>
                <br />
                <asp:Button ID="Button5" runat="server" BackColor="Blue" BorderColor="Black" 
                    BorderStyle="Outset" ForeColor="White" onclick="Button5_Click" Text="See More >>" />
                <br />
                </div>
                &nbsp;</td>
            <td>
            <div class="columns" style="margin-left:-100px">
            <img src="images/img7.jpg" style="height:300px; width:410px;">
                <br />
                <br />
                <div style="width: 299px"><b><i>
                <li>Model No: SC006F</li>
                <li>Model Name: ONZO</li>
                </i></b></div>
                <br />
                <asp:Button ID="Button6" runat="server" BackColor="Blue" BorderColor="Black" 
                    BorderStyle="Outset" ForeColor="White" onclick="Button6_Click" Text="See More >>" />
                <br />
                </div>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
            <div class="columns">
            <img src="images/img10.jpg" style="height:300px; width:300px;">
                <br />
                <br />
                <div style="width: 299px"><b><i>
                <li>Model No: SC007G</li>
                <li>Model Name: GIGA_BYKE_GROOVE</li>
                </i></b></div>
                <br />
                <asp:Button ID="Button7" runat="server" BackColor="Blue" BorderColor="Black" 
                    BorderStyle="Outset" ForeColor="White" onclick="Button7_Click" Text="See More >>" />
                <br />
                </div>
                &nbsp;</td>
            <td>
            <div class="columns" style="margin-left:-150px">
            <img src="images/img11.jpg" style="height:300px; width:400px;">
                <br />
                <br />
                <div style="width: 299px"><b><i>
                <li>Model No: SC008H</li>
                <li>Model Name: GILLON_DOLLY</li>
                </i></b></div>
                <br />
                <asp:Button ID="Button8" runat="server" BackColor="Blue" BorderColor="Black" 
                    BorderStyle="Outset" ForeColor="White" onclick="Button8_Click" Text="See More >>" />
                <br />
                </div>
                &nbsp;</td>
            <td>
            <div class="columns" style="margin-left:-100px">
            <img src="images/img9.jpg" style="height:300px; width:410px;">
                <br />
                <br />
                <div style="width: 299px"><b><i>
                <li>Model No: SC009I</li>
                <li>Model Name: ZOOM</li>
                </i></b></div>
                <br />
                <asp:Button ID="Button9" runat="server" BackColor="Blue" BorderColor="Black" 
                    BorderStyle="Outset" ForeColor="White" onclick="Button9_Click" Text="See More >>" />
                <br />
                </div>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
            <div class="columns">
            <img src="images/Bolt_OG.jpg" style="height:300px; width:400px;">
                <br />
                <br />
                <div style="width: 299px"><b><i>
                <li>Model No: SC0010J</li>
                <li>Model Name: BOLT_OG</li>
                </i></b></div>
                <br />
                <asp:Button ID="Button10" runat="server" BackColor="Blue" BorderColor="Black" 
                    BorderStyle="Outset" ForeColor="White" onclick="Button10_Click" 
                    Text="See More >>" />
                <br />
                </div>
                &nbsp;</td>
            <td>
            <div class="columns">
            <img src="images/Bolt_One.jpg" style="height:300px; width:360px;">
                <br />
                <br />
                <div style="width: 299px"><b><i>
                <li>Model No: SC0011K</li>
                <li>Model Name: BOLT_ONE</li>
                </i></b></div>
                <br />
                <asp:Button ID="Button11" runat="server" BackColor="Blue" BorderColor="Black" 
                    BorderStyle="Outset" ForeColor="White" onclick="Button11_Click" 
                    Text="See More >>" />
                <br />
                </div>
                &nbsp;</td>
            <td>
            <div class="columns">
            <img src="images/Bolt_Chariot.jpg" style="height:300px; width:350px;">
                <br />
                <br />
                <div style="width: 299px"><b><i>
                <li>Model No: SC0012L</li>
                <li>Model Name: BOLT_CHARIOT</li>
                </i></b></div>
                <br />
                <asp:Button ID="Button12" runat="server" BackColor="Blue" BorderColor="Black" 
                    BorderStyle="Outset" ForeColor="White" onclick="Button12_Click" 
                    Text="See More >>" />
                <br />
                </div>
                &nbsp;</td>
        </tr>
    </table>
</div>
<div style="margin-top:250px; margin-left:20%;">
<table border="0" height="100" width="920">
<tbody>
<tr>
<td>
<center><i>© Copyright 2018, <b>Eco Ride</b>. All rights reserved.</i></center>
</td>
</tr>
</tbody>
</table>
</div>
</div>
</form>
</body>
</html>
