<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Feedback" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Feedback Page</title>

    <link href="Styles/Basic_css.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
    
     .style19
        {
            height: 25px;
            text-align: center;
            font-weight: 700;
            font-size: x-large;
        }
        .style20
        {
            height: 39px;
            background-color: #FFCC99;
        }
        .style23
        {
            height: 45px;
            width: 12px;
            text-align: center;
        }
        .style27
        {
            width: 190px;
            height: 43px;
            text-align: right;
            background-color: #00974B;
        }
        .style28
        {
            width: 509px;
            height: 45px;
        }
        .style30
        {
        width: 509px;
        height: 53px;
        background-color: #68bb66;
    }
        .style31
        {
            width: 188px;
            height: 54px;
            text-align: right;
            background-color: #00974B;
        }
        .style48
        {
        }
        .style49
        {
            width: 188px;
            height: 97px;
            text-align: right;
            background-color: #00974B;
        }
        .style51
    {
        background-color: #00974B;
        height: 53px;
    }
    .style55
    {
        width: 509px;
        height: 43px;
        background-color: #68bb66;
    }
    .style58
    {
        width: 509px;
        height: 54px;
        background-color: #68bb66;
    }
    body 
    {
    background-color:Maroon;
    margin: 0;
    font-family: Arial,
    }
    h4 {color:White}
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class="topnav">
    <a href="Enquiry.aspx">Enquiry Area</a>
<a href="Suggestion.aspx">Suggestion Area</a>
<a href="home page.aspx">Home</a>
<div style="margin-right:27%; font-size:xx-large; font-style:italic; font-weight:bolder; color:White;"><marquee>Thankyou for your Feedback</marquee></div>
</div>
<div style="margin-left:22%">
 <table>
        <tr>
            
            <td class="style20" colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                <span class="style19">&nbsp;&nbsp;&nbsp;&nbsp; FEEDBACK FORM&nbsp;</span></td>
            
        </tr>
        <tr>
            
            <td style="text-align: right" class="style51" >
                NAME</td>
            <td class="style30">
                <asp:TextBox ID="TextBox1" runat="server" Width="400px" CssClass="style48" 
                    Height="30px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="*"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
            ErrorMessage="only characters allowed" ControlToValidate="TextBox1"
            ValidationExpression="^[A-Za-z]*$" ></asp:RegularExpressionValidator>
            </td>
            
        </tr>
        <tr>
            
            <td class="style27">
                &nbsp;GENDER</td>
            <td class="style55">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="30px" Width="400px">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>FEMALE</asp:ListItem>
                    <asp:ListItem>MALE</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
           
            <td class="style51" style="text-align: right" >
                EMAIL ID</td>
            <td class="style30">
                <asp:TextBox ID="TextBox3" runat="server" Width="400px" CssClass="style48" 
                    Height="30px"></asp:TextBox>
                    
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="Invalid" 
                    style="font-weight: 700; color: #FFFF66" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
             </td>
        </tr>
        <tr>
           
            <td class="style31">
                FEEDBACK DATE</td>
            <td class="style58">
                <asp:TextBox ID="TextBox4" runat="server" Height="30px" Width="400px" 
                    CssClass="style48" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="*"></asp:RequiredFieldValidator>
                &nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBox3" ControlToValidate="TextBox4" 
                    ErrorMessage="Invalid Format" 
                    style="color: #CCCC00; font-size:small; font-family: Arial, Helvetica, sans-serif; font-weight: 700" 
                    Type="Date"></asp:CompareValidator>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" 
                    style="color: #66FF33; font-weight: 700; font-size:small" 
                    Text="(According To Your System's Format)"></asp:Label>
            </td>
        </tr>
        <tr>
            
            <td class="style49">
                MESSAGES</td>
            <td class="style58">
                <asp:TextBox ID="TextBox5" runat="server" Height="61px" Width="444px" 
                    TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            
            <td class="style23">&nbsp;&nbsp;&nbsp; 
            </td>
            <td class="style28">
            &nbsp;<asp:Button ID="Button1" runat="server" BackColor="Blue" BorderColor="Black" 
                    BorderStyle="Outset" Font-Bold="True" ForeColor="White" Height="35px" 
                    onclick="Button1_Click1" Text="Submit" Width="100px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" BackColor="Blue" BorderColor="Black" 
                    BorderStyle="Outset" Font-Bold="True" ForeColor="White" Height="35px" 
                    onclick="Button2_Click1" Text="Clear" Width="100px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" BackColor="Blue" BorderColor="Black" 
                    BorderStyle="Outset" Font-Bold="True" ForeColor="White" Height="35px" 
                    onclick="Button3_Click1" onclientclick="home page.aspx" 
                    PostBackUrl="~/home page.aspx" Text="Home" Width="100px" />
            </td>
        </tr>
    </table>
</div>
    
    </div>
    </form>
</body>
</html>
