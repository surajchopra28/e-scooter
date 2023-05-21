using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class EnquiryAnswer : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;
    string str;
    protected void Page_Load(object sender, EventArgs e)
    {
        String uname = Request.QueryString["uname"];
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from Enquiry where ENcode='" + uname + "'", con);
        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            LabelENcode.Text = dr[0].ToString();
            LabelENdate.Text = dr[1].ToString();
            LabelName.Text = dr[2].ToString();
            LabelQues.Text = dr[3].ToString();
        }
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into EnquiryAnswers values('"+LabelENcode.Text+"','"+LabelENdate.Text+"','"+LabelName.Text+"','"+LabelQues.Text+"','"+TextBox1.Text+"')",con);
        cmd.ExecuteNonQuery();
        con.Close();
        Labelmsg.Text = "Submitted Successfully";
        TextBox1.Text = "";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("EnquiryAnswersPage.aspx");
    }
}