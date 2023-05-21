<%@ Page Language="C#" AutoEventWireup="true" CodeFile="customerdetails.aspx.cs" Inherits="customerdetails" %>

<!DOCTYPE html>

<html>
<head runat="server">
<title>customerdetails</title>
<link href="Styles/Basic_css.css" rel="Stylesheet" type="text/css" />
<style type="text/css">
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
    .style3
    {
        width: 500px;
    }
    .style4
    {
        width: 1163px;
    }
    .style7
    {
        width: 605px;
    }
    .style9
    {
        width: 158px;
    }
    .style16
    {
        width: 395px;
    }
    .style17
    {
        width: 117px;
    }
    .style18
    {
        width: 366px;
        background-color: Maroon;
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class="topnav">
    <a href="Customer_login.aspx">Already Customer</a>
    <a href="About us.html">About us</a>
    <a href="home page.aspx">Home</a>
    </div>
    <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Please Select Model No 
        :&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" 
            DataSourceID="SqlDataSource1" DataTextField="ModelNo" DataValueField="ModelNo" 
            Height="36px" Width="151px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ApplicationServices %>" 
            SelectCommand="SELECT [ModelNo] FROM [ScooterInfo]"></asp:SqlDataSource>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" BackColor="Blue" BorderColor="Black" 
                BorderStyle="Outset" ForeColor="White" Height="31px" onclick="Button1_Click" 
                Text="View" Width="119px" />
        </h2>
        <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        </h2>
        <div style="margin-left:20%; margin-top:-25px;">
            <asp:MultiView ID="MultiView1" runat="server">
                <asp:View ID="View1" runat="server">
                    <table class="style4">
                        <tr>
                            <td class="style18" rowspan="2">
                                <asp:Image ID="Image2" runat="server" Height="400px" Width="370px" />
                            </td>
                            <td class="style3" valign="top">
                                <table class="style7">
                                    <tr>
                                        <td class="style17" style="font-size: medium">
                                            &nbsp;</td>
                                        <td class="style9">
                                            &nbsp;</td>
                                        <td class="style16">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style17" style="font-size: medium">
                                           <b> Model No&nbsp; : </b>
                                        </td>
                                        <td class="style9">
                                            <b><i>
                                            <asp:Label ID="lblmodelno" runat="server"></asp:Label>
                                            </i></b>
                                        </td>
                                        <td class="style16">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style17" style="font-size: medium">
                                          <b>  Model Name&nbsp; : </b>
                                        </td>
                                        <td class="style9">
                                        <b><i> 
                                            <asp:Label ID="lblmname" runat="server"></asp:Label>
                                        </i></b>
                                        </td>
                                        <td class="style16">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style17" style="font-size: medium">
                                        <b>    Price&nbsp; : </b>
                                        </td>
                                        <td class="style9">
                                        <b><i>
                                            <asp:Label ID="lblprice" runat="server"></asp:Label>
                                        </i></b>
                                        </td>
                                        <td class="style16">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style17" style="font-size: medium">
                                            <b> In Stock : </b>
                                            </td>
                                        <td class="style9">
                                        <b><i>
                                            <asp:Label ID="lblqnt" runat="server"></asp:Label>
                                        </i></b>
                                        </td>
                                        <td class="style16">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style17" style="font-size: medium">
                                          <b>  Colour&nbsp; : </b>
                                        </td>
                                        <td class="style9">
                                        <b><i>
                                            <asp:Label ID="lblcolour" runat="server"></asp:Label>
                                        </i></b>
                                        </td>
                                        <td class="style16">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="style17" style="font-size: medium">
                                        <b>    Manufacturer&nbsp; : </b>
                                        </td>
                                        <td class="style9">
                                        <b><i>
                                            <asp:Label ID="lblman" runat="server"></asp:Label>
                                        </i></b>
                                        </td>
                                        <td class="style16">
                                            &nbsp;</td>
                                    </tr>
                                    
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td class="style3" valign="top">
                                &nbsp;<asp:Button ID="Button3" runat="server" BackColor="Blue" BorderColor="Black" 
                                    BorderStyle="Outset" ForeColor="White" onclick="Button3_Click" Text=" Buy It" 
                                    Width="85px" />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button2" runat="server" BackColor="Blue" BorderColor="Black" 
                                    BorderStyle="Outset" ForeColor="White" onclick="Button2_Click" Text="Back" 
                                    Width="99px" />
                            </td>
                        </tr>
                    </table>
                </asp:View>
            </asp:MultiView>
        </div>
    </div>
    </form>
</body>
</html>
