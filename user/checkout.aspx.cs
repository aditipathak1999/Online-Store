using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class user_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry;
    SqlDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {
        txtemail.Text = Session["email"].ToString();
    }
    protected void btn_order_Click(object sender, EventArgs e)
    {
        cn.Open();
        qry = "insert into order_details values ('" + Session["email"].ToString() + "','" + txtumobile.Text + "','" + txtfname.Text + "','" + txtlname.Text + "','" + txtadd.Text + "','" + txtcountry.Text + "','" + txtstate.Text + "','" + txtcity.Text + "','" + txtzip.Text + "')";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('Order Completed...')</script>");
        Response.Redirect("order_details.aspx");
        cn.Close();
    }
}