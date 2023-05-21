<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Customer_login.aspx.cs" Inherits="Customer_login" %>

<!DOCTYPE html />
<html>
<head runat="server">
    <title>Already a customer</title>
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
            width: 262px;
            height: 49px;
            background-color: Maroon;
        }
        h4 
        {
            color:White;
        }
body 
{
background-image: url(images/img22.jpg);
margin: 0;
font-family: Arial,
}
.topnav {
overflow:hidden;
background-color:Maroon;
        height: 47px;
    }
.topnav a {
float: right;
color: #f2f2f2;
text-align: center;
padding: 14px;
font-size: 17px;
}
.topnav a:hover {
background-color: white;
color: black;
}
th, td {
padding: 15px;
}
</style>
</head>
<body>
<div class="topnav">
<a href="About us.html">About Us</a>
<a href="home page.aspx">Home Page</a>
<a href="Feedback.aspx">Feedback</a>
<a href="Enquiry.aspx">Enquiry Area</a>
</div>
    <form id="form1" runat="server">
    <h1 style="margin-left:42%">Customer Login</h1>
        <div style="height: 228px; margin-left:30%">
            <table>
            <tr>
            <td class="style31">
            <h4>Name</h4>
            </td>
            <td class="style32">
            <asp:TextBox ID="TextBox1" runat="server" Width="240px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="Name fied can't be empty !" 
                Font-Italic="True" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            </tr>
            <tr>
            <td class="style31">
            <h4>Phone_no</h4> 
            </td>
            <td class="style32">
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" 
                CausesValidation="True" MaxLength="10" Width="242px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TextBox2" ErrorMessage="Ph_no. Field can't be empty !" 
                ForeColor="Red"></asp:RequiredFieldValidator>
              <asp:RangeValidator ID="RangeValidator1" runat="server" 
                ControlToValidate="TextBox2" ErrorMessage="Please enter valid Ph_no. !" 
                ForeColor="Red" MaximumValue="9999999999" MinimumValue="6000000000"></asp:RangeValidator>
            </td>
            </tr>
            <tr>
            <td class="style31"></td>
            <td class="style32">
            <asp:Button ID="Button1" runat="server" BackColor="Blue" BorderColor="Black" 
                Font-Bold="True" ForeColor="White" onclick="Button1_Click" Text="Submit" 
                Width="107px" Height="41px" />
                </td>
                </tr>
                </table>
            </div>
    </form>
</body>
</html>
