using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class contactus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Applicationservices"].ConnectionString);
        SqlCommand cmd = new SqlCommand("insert into login values('" + TextBox1.Text + "','" + TextBox5.Text + "','" + TextBox4.Text + "','" + DropDownList1.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            TextBox1.Text = "";
            TextBox5.Text = "";
            TextBox4.Text = "";
            DropDownList1.SelectedIndex = 0;
            Response.Redirect("DetailsEntered.aspx");
    }
    protected void TextBox5_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        Response.Redirect("Customer_login.aspx");
    }
}