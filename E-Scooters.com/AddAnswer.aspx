<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddAnswer.aspx.cs" Inherits="EnquiryAnswer" %>

<!DOCTYPE html >

<html>
<head runat="server">
    <title>Add_Answer</title>
     <link href="Styles/Basic_css.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
    body 
    {   
    background-image: url(images/img22.jpg);
    margin: 0;
    font-family: Arial,
    }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class="topnav">
    <a href="home page.aspx">Home</a>
    <a href="Feedback.aspx">Feedback</a>
    <a href="Login page.html">Admin login</a></div>
        <h2 style="margin-left: 400px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Labelmsg" runat="server"></asp:Label>
        </h2>
        <h2 style="margin-left: 520px">Enquiry code&nbsp;:&nbsp;&nbsp;
        <asp:Label ID="LabelENcode" runat="server"></asp:Label>
        </h2>
        <h2 style="margin-left: 394px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            Enquiry Date :&nbsp;&nbsp;&nbsp; 
            <asp:Label ID="LabelENdate" runat="server"></asp:Label>
        </h2>
        
        <h2 style="margin-left: 520px">
            Name :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <asp:Label ID="LabelName" runat="server"></asp:Label>
        </h2>
        <h2 style="margin-left: 520px">
            Questions :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="LabelQues" runat="server"></asp:Label>
        </h2>
        <div>
        <h1 style="margin-left: 400px">&nbsp;</h1>
            <h1 style="margin-left: 400px">Enquiry Answer&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="200px" 
                    ontextchanged="TextBox1_TextChanged"></asp:TextBox>
            </h1>
            <p style="margin-left: 600px">
                <asp:Button ID="Button1" runat="server" BackColor="Blue" BorderColor="Black" 
                    BorderStyle="Outset" Font-Bold="True" ForeColor="White" Height="35px" 
                    Text="Submit" Width="200px" onclick="Button1_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" BackColor="Blue" BorderColor="Black" 
                    BorderStyle="Outset" Font-Bold="True" ForeColor="White" Height="35px" 
                    onclick="Button2_Click" Text="LogOut" Width="150px" />
            </p>
        </div>
    </div>
    </form>
</body>
</html>
