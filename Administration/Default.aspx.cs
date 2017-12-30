using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using IGPROG;
using System.Configuration;
using System.Xml;

public partial class Administration_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
          //  Response.Redirect(Request.Url.AbsoluteUri);
            if (Session["login"] == null)
                Response.Redirect("Login.aspx");
        }
  
    }
   
}