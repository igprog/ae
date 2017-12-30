using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using IGPROG;

public partial class Index : System.Web.UI.Page
{
    Properties properties = new Properties();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string lang = GetActiveLanguage();
            Translations translations = new Translations();
            litMainDescription.Text = Renderer.RenderMainDescription(GetActiveLanguage());
            litHomeDescription.Text = Renderer.RenderHomeDescription(GetActiveLanguage());
            litApartmentsDescription.Text = Renderer.RenderApartmentsDescription(GetActiveLanguage());
            litDistances.Text = Renderer.RenderDistances(GetActiveLanguage());
        }
    }

    public string GetActiveLanguage()
    {
        //properties.GetBrowserLanguage();
        // properties.BrowserLanguage;
        string lang = "eng"; 
        try { lang = Request.QueryString["lang"].ToString(); }
        catch (Exception ex) { }
        return lang.ToString();
    }

}