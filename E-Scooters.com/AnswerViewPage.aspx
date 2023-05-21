<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AnswerViewPage.aspx.cs" Inherits="AnswerViewPage" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>ViewAnswer</title>
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
    <a href="Suggestion.aspx">Suggestion</a>
    </div>
        <br />
        <br />
        <br />
        <br />
        <br />
        <div style="margin-left:30px">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
            GridLines="None" Height="97px" 
            onselectedindexchanged="GridView1_SelectedIndexChanged" Width="1297px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="ENcode" HeaderText="ENcode" 
                SortExpression="ENcode" />
            <asp:BoundField DataField="EnquiryDate" HeaderText="EnquiryDate" 
                SortExpression="EnquiryDate" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Ques" HeaderText="Ques" SortExpression="Ques" />
            <asp:BoundField DataField="Answers" HeaderText="Answers" 
                SortExpression="Answers" />
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ApplicationServices %>" 
            SelectCommand="SELECT * FROM [EnquiryAnswers] WHERE ([ENcode] = @ENcode)">
            <SelectParameters>
                <asp:QueryStringParameter Name="ENcode" QueryStringField="uname" 
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    </div>
    </form>
</body>
</html>
