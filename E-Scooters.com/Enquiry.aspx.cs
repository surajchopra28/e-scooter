using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Enquiry : System.Web.UI.Page
{
    SqlCommand cmd, cmd1, cmd2;
    SqlDataReader dread, dread2, myread;
    SqlConnection con;
    int num;
    protected void Page_Load(object sender, EventArgs e)
    {

        string d = DateTime.Now.ToShortDateString();
        string ss;
        con = new SqlConnection("Data Source=DELL-PC;Initial Catalog=dbtry;User ID=sa;Password=suraj");
        con.Open();
        cmd = new SqlCommand("select max(EnquiryID) from EnquiryCode", con);
        myread = cmd.ExecuteReader();
        while (myread.Read())
        {
            ss = myread[0].ToString();
            int.TryParse(ss, out num);
            num = num+1;
            Label1.Text = "" + num;
        }
        myread.Dispose();
        cmd.Dispose();

    }
    public void MsgBox1(string msg, Page refP)
    {
        Label lbl = new Label();
        string lb = "window.confirm('" + msg + "')";
        ScriptManager.RegisterClientScriptBlock(refP, this.GetType(), "UniqueKey", lb, true);
        refP.Controls.Add(lbl);
    }
    public void clear()
    {
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
    }
    protected void Button3_Click1(object sender, EventArgs e)
    {
        Response.Redirect("home page.aspx");
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        cmd1 = new SqlCommand("insert into EnquiryCode values('" + num + "')", con);
        cmd1.ExecuteNonQuery();
        cmd2 = new SqlCommand("insert into Enquiry  values('" + Label1.Text + "','" + TextBox2.Text + " ','" + TextBox3.Text + " ','" + TextBox4.Text + " ')", con);
        cmd2.ExecuteNonQuery();
        MsgBox1(" ENQUIRY  SUBMITTED  Successfully   ", this);
        clear();
        Session["uid"] = Label1.Text;
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
    }
}