using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Suggestion : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd2;
    public void clear()
    {
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
    }
    public void MsgBox1(string msg, Page refP)
    {
        Label lbl = new Label();
        string lb = "window.confirm('" + msg + "')";
        ScriptManager.RegisterClientScriptBlock(refP, this.GetType(), "UniqueKey", lb, true);
        refP.Controls.Add(lbl);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=DELL-PC;Initial Catalog=dbtry;User ID=sa;Password=suraj");
        con.Open();
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        cmd2 = new SqlCommand("insert into SUGGESTION values('" + TextBox5.Text + "','" + TextBox6.Text + " ','" + TextBox7.Text + " ','" + TextBox8.Text + " ')", con);
        cmd2.ExecuteNonQuery();
        MsgBox1(" MESSAGE   SUBMITTED  Successfully   ", this);
        clear();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/contactus.aspx");
    }
}

/*
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class SUGGESTIONS : System.Web.UI.Page
{

    SqlConnection con;
    SqlCommand cmd2;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=ABC-PC;Initial Catalog=IVYDATA.MDF;User ID=sa;Password=arya");
        con.Open();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox3.Text = "";
        
    }
    public void clear()
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
    }
    public void MsgBox1(string msg, Page refP)
    {
        Label lbl = new Label();
        string lb = "window.confirm('" + msg + "')";
        ScriptManager.RegisterClientScriptBlock(refP, this.GetType(), "UniqueKey", lb, true);
        refP.Controls.Add(lbl);
    }


protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/newhomepage.aspx");

    }
protected void Button1_Click1(object sender, EventArgs e)
{
    cmd2 = new SqlCommand("insert into SUGGESTION values('" + TextBox1.Text + "','" + TextBox2.Text + " ','" + TextBox3.Text + " ','" + TextBox4.Text + " ')", con);
    cmd2.ExecuteNonQuery();
    MsgBox1(" MESSAGE   SUBMITTED  Successfully   ", this);
    clear();
    
}
}
*/