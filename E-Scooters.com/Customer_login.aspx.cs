using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Customer_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString);
        SqlCommand cmd = new SqlCommand("Select * from login where Name='" + TextBox1.Text + "' and Phone_no='" + TextBox2.Text + "'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        if (dt.Rows.Count != 0)
        {
            Response.Write("<script>alert('Login Successfull')</script>");
            Response.Redirect("Orderpage.html");
        }
        else
        {
            Response.Write("<script>alert('incorrect username or password')</script>");
        }

    }
}