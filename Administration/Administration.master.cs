using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Administration_Administration : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["login"] == null)
            {
                Response.Redirect("Login.aspx");
            }

            if (Session["supervisor"] == null)
            {
                editTranslations.Disabled = true;
            }
        }
    }
    protected void btnLogOut_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("Login.aspx");
    }
}
