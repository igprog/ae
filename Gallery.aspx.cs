using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using IGPROG;

public partial class Gallery : System.Web.UI.Page
{
    Properties properties = new Properties();

    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            this.Page.Master.FindControl("divBannerSlider").Visible = false;
            Translations translations = new Translations();
            litPageTitle.Text = Renderer.RenderPageTitle(GetActiveLanguage(), "Gallery");
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