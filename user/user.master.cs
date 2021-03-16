using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_user : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["email"] != null)
        {
            hyperlogin.Visible = false;
            hyperlogout.Visible = true;
        }
        if (Session["email"] == null)
        {
            //lbl_uname.Text = uname;
            hyperlogin.Visible = true;
            hyperlogout.Visible = false;
        }
    }
}
