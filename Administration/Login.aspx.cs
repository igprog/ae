using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Administration_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string username = txtUserName.Text;
        string password = txtPassword.Text;

        if (username == "brela" && password == "1")
        {
            Session["login"] = username;
            Response.Redirect("BrowseBooking.aspx");
        }

        if (username == "igor" && password == "1")
        {
            Session["login"] = username;
            Session["supervisor"] = username;
            Response.Redirect("BrowseBooking.aspx");
        }


    }
}