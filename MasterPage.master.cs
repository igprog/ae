using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using IGPROG;

public partial class MasterPage : System.Web.UI.MasterPage
{
    Properties properties = new Properties();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            String lang = GetActiveLanguage();
            PrepareForm(lang);
          //  properties.GetBrowserLanguage();
        }
    }

    private void SetActiveLanguage(String language)
    {
        string url = HttpContext.Current.Request.Url.AbsoluteUri;
        string[] separateURL = url.Split('?');
        url = separateURL[0] + "?";
        string queryString = "lang=" + language;
        Response.Redirect(url + queryString.ToString());
    }

    public string GetActiveLanguage()
    {
        string lang = "eng";
        //properties.GetBrowserLanguage();
       // lang = properties.BrowserLanguage;
        if (Request.QueryString["lang"] != null)
        {
            lang = Request.QueryString["lang"].ToString();
        }

        //try { lang = Request.QueryString["lang"].ToString(); }
        //catch (Exception ex) { }
        return lang.ToString();
    }


    private void PrepareForm(String language)
    {
        Translations translations = new Translations();
        siteTitle.InnerText = translations.SelectTranslation("SiteTitle", language).Result.ToUpper();
        litTopNav.Text = Renderer.RenderTopNav(language);
        litFooterLinks.Text = Renderer.RenderFooterLinks(language);

        ddlLanguageSelector.Items.Add(new ListItem("HR", "hr"));
        ddlLanguageSelector.Items.Add(new ListItem("EN", "en"));
        ddlLanguageSelector.Items.Add(new ListItem("DE", "de"));
        ddlLanguageSelector.SelectedValue = GetActiveLanguage();

    }



    protected void ddlLanguageSelector_SelectedIndexChanged(object sender, EventArgs e)
    {
        string language = ddlLanguageSelector.SelectedItem.Value;
        SetActiveLanguage(language);
    }


}
