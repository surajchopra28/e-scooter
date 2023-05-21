<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EnquiryAnswersPage.aspx.cs" Inherits="EnquiryAnswersPage" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Answers page</title>
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
    </div>
    <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Please Select 
        Enquiry Code :&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" Height="30px" Width="140px" 
            DataSourceID="SqlDataSource1" DataTextField="EnquiryID" 
            DataValueField="EnquiryID">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ApplicationServices %>" 
            SelectCommand="SELECT * FROM [EnquiryCode]"></asp:SqlDataSource>
        </h1>
        <div>
            <h2 style="margin-left: 520px">Admin&nbsp; 
        <asp:RadioButton ID="RadioButton1" runat="server" GroupName="Enquiry" 
                    oncheckedchanged="RadioButton1_CheckedChanged" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        User&nbsp;
        <asp:RadioButton ID="RadioButton2" runat="server" AutoPostBack="True" 
                    GroupName="Enquiry" oncheckedchanged="RadioButton2_CheckedChanged" />
        </h2>
        <div>
        <h2>
            <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text="UserName"></asp:Label>
            &nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="200px"></asp:TextBox>
                <br />
            <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" Text="Password "></asp:Label>
            &nbsp; &nbsp;&nbsp;&nbsp; 
                <asp:TextBox ID="TextBox2" runat="server" Height="25px" Width="200px" 
                TextMode="Password"></asp:TextBox>
                </h2>

                </div>
    </div>
    <div style="margin-left: 680px">
        <br />
        <asp:Button ID="Button1" runat="server" Text="Login" BackColor="Blue" 
            BorderColor="Black" BorderStyle="Outset" Font-Bold="True" ForeColor="White" 
            Height="35px" onclick="Button1_Click" Width="150px" />
        <br />
        <br />
        <asp:Label ID="Labelmsg" runat="server"></asp:Label>
    </div>
    </div>
    </form>
</body>
</html>
