<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Enquiry.aspx.cs" Inherits="Enquiry" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Enquiry Page</title>
    <link href="Styles/Basic_css.css" rel="Stylesheet" type="text/css" />
    <style type="text/css">
    
        .style19
        {
            font-size: x-large;
            font-weight: bold;
        }
        .style24
        {
            height: 38px;
        }
        .style27
        {
            width: 182px;
            height: 64px;
        font-weight: bold;
        background-color: #77FF77;
        text-align:right;
    }
        .style29
        {
            width: 182px;
            height: 49px;
        font-weight: bold;
        background-color: #77FF77;
        text-align:right;
    }
        .style31
        {
            width: 182px;
            height: 51px;
        font-weight: bold;
        background-color: #77FF77;
        text-align:right;
    }
        .style40
        {
            height: 64px;
            width: 418px;
        background-color: #B0FFB0;
    }
        .style41
        {
            height: 49px;
            width: 418px;
        background-color: #B0FFB0;
    }
        .style42
        {
            height: 51px;
            width: 418px;
        background-color: #B0FFB0;
    }
        .style43
        {
            height: 38px;
            width: 182px;
        }
    .style48
    {
        font-weight: bold;
    }
    .style49
    {
        width: 600px;
        text-align: center;
        height: 51px;
        background-color:#ffcc99;
    }
    body
    {
    background-color:Maroon; 
    margin: 0;
    font-family: Arial,
    }
    
        .style50
        {
            width: 182px;
            height: 65px;
            font-weight: bold;
            background-color: #77FF77;
            text-align: right;
        }
        .style51
        {
            height: 65px;
            width: 418px;
            background-color: #B0FFB0;
        }
    
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class="topnav">
<a href="Feedback.aspx">Feedback</a>
<a href="home page.aspx">Home</a>
<a href="contactus.aspx">Contact us</a>
<a href="Suggestion.aspx">Suggestion Area</a>
<a href="EnquiryAnswersPage.aspx">Answers</a>
</div>
<div style="margin-left:26%; margin-top:30px">
 <table>
        <tr>
            <td class="style49" colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <span class="style19"> ENQUIRY FORM&nbsp;</span></td>
        </tr>
        <tr>
            
            <td class="style50">
                ENQUIRY CODE</td>
            <td class="style51">
                Your System Generated Code is:
                <asp:Label ID="Label1" runat="server" 
                    style="color: #FF0000; font-weight: 700; font-size: large"></asp:Label>
&nbsp;
            </td>
        </tr>
        <tr>
            <td class="style27">
                ENQUIRY DATE</td>
            <td class="style40">
                <asp:TextBox ID="TextBox2" runat="server" Width="302px" CssClass="style48"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="*"></asp:RequiredFieldValidator>
&nbsp;&nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBox3" ControlToValidate="TextBox2" 
                    ErrorMessage="Invalid Format" SetFocusOnError="True" Type="Date"></asp:CompareValidator>
                <br />
                <asp:Label ID="Label2" runat="server" 
                    style="color: #FF0000; font-weight: 700; font-size: large" 
                    Text="(According to your System's format)"></asp:Label>
            </td>
        </tr>
        <tr>
            
            <td class="style29">
                NAME</td>
            <td class="style41">
                <asp:TextBox ID="TextBox3" runat="server" Width="302px" CssClass="style48"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="*"></asp:RequiredFieldValidator>&nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server"
            ErrorMessage="only characters allowed" ControlToValidate="TextBox3"
            ValidationExpression="^[A-Za-z]*$" ></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            
            <td class="style31">
                ENQUIRY</td>
            <td class="style42">
                <asp:TextBox ID="TextBox4" runat="server" Height="90px" Width="369px" 
                    CssClass="style48" TextMode="MultiLine"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            
        </tr>
        <tr>
            <td class="style43">
            </td>
            <td class="style24">
&nbsp;<asp:Button ID="Button1" runat="server" BackColor="Blue" BorderColor="Black" 
                    BorderStyle="Outset" Font-Bold="True" ForeColor="White" Height="35px" 
                    Text="Submit" Width="100px" onclick="Button1_Click1" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Button ID="Button2" runat="server" 
                    BackColor="Blue" BorderColor="Black" BorderStyle="Outset" Font-Bold="True" 
                    ForeColor="White" Height="35px" Text="Clear" Width="100px" 
                    onclick="Button2_Click1" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" BackColor="Blue" BorderColor="Black" 
                    BorderStyle="Outset" Font-Bold="True" ForeColor="White" Height="35px" 
                    onclick="Button3_Click1" onclientclick="home page.aspx" 
                    PostBackUrl="~/home page.aspx" Text="Home" Width="100px" />
                <br />
                <br />
                <br />
            </td>
        </tr>
    </table>
</div>
    </div>
    </form>
</body>
</html>
