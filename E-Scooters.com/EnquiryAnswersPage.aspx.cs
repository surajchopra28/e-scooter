using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class EnquiryAnswersPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {
        
    }
    protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
    {
        Response.Redirect("AnswerViewPage.aspx?uname="+DropDownList1.Text);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Labelmsg.Text = ("Please select one of the options: Admin or User");
        String cs = ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;
        using (SqlConnection con = new SqlConnection(cs))
        {
            if (RadioButton1.Checked == true)
            {
                SqlCommand cmd = new SqlCommand("select * from Admin where USERNAME='" + TextBox1.Text + "'and PASSWORD='" + TextBox2.Text + "'", con);
                con.Open();
                cmd.ExecuteNonQuery();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count != 0)
                {
                    Response.Redirect("AddAnswer.aspx?uname="+DropDownList1.Text);
                }
                else
                {
                    Response.Write("<script>alert('Incorrect username or password')</script>");
                }
            }
            else
            {
                if (RadioButton2.Checked == true)
                {

                }
            }
        }
    }
}