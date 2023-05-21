using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class customerdetails : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedIndex == 12)
        {
            
        }
        else
        {
            MultiView1.SetActiveView(View1);
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString);
            con.Open();
            cmd = new SqlCommand("select * from ScooterInfo where ModelNo='" + DropDownList1.Text + "'", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                lblmodelno.Text = dr[0].ToString();
                lblmname.Text = dr[1].ToString();
                lblprice.Text = dr[2].ToString();
                lblqnt.Text = dr[3].ToString();
                lblcolour.Text = dr[4].ToString();
                lblman.Text = dr[5].ToString();
                Image2.ImageUrl = dr[6].ToString();
            }

        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("customerdetails.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("contactus.aspx");
    }
}