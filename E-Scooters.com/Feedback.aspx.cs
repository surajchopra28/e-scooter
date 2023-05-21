using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Feedback : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd2;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=DELL-PC;Initial Catalog=dbtry;User ID=sa;Password=suraj");
        con.Open();
    }
    public void clear()
    {
        TextBox1.Text = "";
        DropDownList1.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
    }
    public void MsgBox1(string msg, Page refP)
    {
        Label lbl = new Label();
        string lb = "window.confirm('" + msg + "')";
        ScriptManager.RegisterClientScriptBlock(refP, this.GetType(), "UniqueKey", lb, true);
        refP.Controls.Add(lbl);
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        cmd2 = new SqlCommand("insert into Feedback values('" + TextBox1.Text + "','" + DropDownList1.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + " ','" + TextBox5.Text + " ')", con);
        cmd2.ExecuteNonQuery();
        MsgBox1(" FEEDBACK  SENT  Successfully   ", this);
        clear();
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        DropDownList1.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
    }
    protected void Button3_Click1(object sender, EventArgs e)
    {
        Response.Redirect("home page.aspx");
    }
}

