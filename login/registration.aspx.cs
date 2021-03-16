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

public partial class login_registration : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry;
    SqlDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {
    }
 
    protected void btn_reg_Click(object sender, EventArgs e)
    {
        //try
        //{
        //    cn.Open();
        //    qry = "select * from login where email ='" + txtemail.Text + "'";
        //    cmd = new SqlCommand(qry, cn);
        //    dr = cmd.ExecuteReader();

        //    if (dr.HasRows)
        //    {
        //        Response.Write("<script>alert('You Are Already Registered..')</script>");
        //        txtemail.Text = "";
        //        txtpass.Text = "";
        //        txtcpass.Text = "";
        //    }
        //    else
        //    {
        //        cn.Close();
                cn.Open();
                qry = "insert into login values ('" + txtemail.Text + "','" + txtpass.Text + "','" + 0 + "')";
                cmd = new SqlCommand(qry, cn);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Registered Successfully..')</script>");
                Response.Redirect("login.aspx");
                cn.Close();

                txtemail.Text = "";
                txtpass.Text = "";
                txtcpass.Text = "";
            //}
        //    cn.Close();
        //}
        //catch
        //{
        //    Response.Write("<script>alert('Invalid Sign Up Data..')</script>");
        //}

    }
}