<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Suggestion.aspx.cs" Inherits="Suggestion" %>

<!DOCTYPE html>

<html>
<head id="Head1" runat="server">
    <title>Suggestion Page</title>


    <link href="Styles/Basic_css.css" rel="stylesheet" type="text/css" />

    <style type="text/css">
        .style31
        {
            width: 200px;
            text-align: right;
            height: 49px;
            background-color:Maroon;
        }
        .style32
        {
            width: 400px;
            height: 49px;
            background-color: Maroon;
        }
        .style35
        {
            width: 200px;
            text-align: right;
            height: 66px;
            background-color: Maroon;
        }
        .style36
        {
            width: 400px;
            height: 66px;
            background-color: Maroon;
        }
        .style41
        {
            width: 200px;
            text-align: right;
            background-color: Maroon;
        }
        .style42
        {
            width: 400px;
            background-color: Maroon;
        }
            
body 
{
background-image: url(images/img22.jpg);
margin: 0;
font-family: Arial,
}
    h4 {color:White}
    </style>
</head>
<body>
<form id="form1" runat="server">

<div class="topnav">
<a href="About us.html">About Us</a>
<a href="Login page.html">Admin Login</a>
<a href="home page.aspx">Home</a>
<div style="margin-right:23.5%; font-size:xx-large; font-style:italic; font-weight:bolder; color:White;"><marquee>Thankyou for your valuable Suggestion</marquee></div>
</div>
<h1 style="margin-left:42%">Suggestion Form</h1>
<div style="margin-left:27%">
    <table>
        <tr>
            <td class="style31">
                <h4>YOUR NAME</h4></td>
            <td class="style32">
                <asp:TextBox ID="TextBox5" runat="server" Width="357px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            
            <td class="style31">
                <h4>E-MAIL ID</h4>
            </td>
            <td class="style32">
                <asp:TextBox ID="TextBox6" runat="server" Width="355px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="TextBox6" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="TextBox6" ErrorMessage="Invalid E-Mail " 
                    style="font-weight: 700" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    ForeColor="Red"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            
            <td class="style35">
                <h4>DATE</h4>
            </td>
            <td class="style36">
                <asp:TextBox ID="TextBox7" runat="server" Width="354px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="TextBox7" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp; <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="TextBox6" 
                    ControlToValidate="TextBox7" ErrorMessage="Invalid Format" 
                    style="font-weight: 700" Type="Date" ForeColor="Red"></asp:CompareValidator>
                <br />
                <asp:Label ID="Label2" runat="server" style="font-weight: 700; color: #FFFF66" 
                    Text="(According To Your System's Format)"></asp:Label>
            </td>
        </tr>
        <tr>
            
            <td class="style41">
                <h4>SUGGESTION</h4></td>
            <td class="style42">
                <asp:TextBox ID="TextBox8" runat="server" Height="66px" Width="357px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="TextBox8" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            
            <td class="style41">
                &nbsp;</td>
            <td class="style42">
            &nbsp;<asp:Button 
                    ID="Button1" runat="server" 
                    style="font-weight: 700; font-size: medium" Text="Submit" Width="129px" 
                    onclick="Button1_Click1" BackColor="Blue" BorderColor="Black" 
                    BorderStyle="Outset" Font-Bold="True" ForeColor="White" Height="36px" />
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" BackColor="Blue" BorderColor="Black" 
                    BorderStyle="Outset" Font-Bold="True" ForeColor="White" Height="36px" 
                    onclick="Button2_Click" onclientclick="contactus.aspx" 
                    PostBackUrl="~/contactus.aspx" Text="Back" Width="89px" />
             </td>
           
        </tr> 
            
    </table>

    </div>
    </form>
</body>
</html>
