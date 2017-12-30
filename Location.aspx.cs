using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using IGPROG;

public partial class Location : System.Web.UI.Page
{
    Properties properties = new Properties();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            litPageTitle.Text = Renderer.RenderPageTitle(GetActiveLanguage(), "Location");
        }

    }

    private string GetActiveLanguage()
    {
        string lang = "eng";
        try { lang = Request.QueryString["lang"].ToString(); }
        catch (Exception ex) { }
        return lang.ToString();
    }

}