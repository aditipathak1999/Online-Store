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

public partial class login_login : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry;
    SqlDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_login_Click(object sender, EventArgs e)
    {
        cn.Open();
        qry = "select * from login where email ='" + txtemail.Text + "' and password ='" + txtpassword.Text + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();

        if (dr.HasRows)
        {
            dr.Read();

            int status = Convert.ToInt32(dr[3]);

            Session["email"] = txtemail.Text;
            Session["user_id"] = dr["uid"];
            //Session["user_name"] = dr["name"];
            if (status == 0)
            {
                Response.Redirect("~/user/home.aspx");
            }
            else
            {
                Response.Redirect("~/Admin/home.aspx");
            }
        }
        else
        {
            Response.Write("<script>alert('Invalid Sign In Data..')</script>");
            txtpassword.Text = "";
        }

        cn.Close();
    }
}