using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using IGPROG;

public partial class Accommodation : System.Web.UI.Page
{
    Properties properties = new Properties();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            this.Page.Master.FindControl("divBannerSlider").Visible = false;
            
            Translations translations = new Translations();
            litPageTitle.Text = Renderer.RenderPageTitle(GetActiveLanguage(), "Accommodation");
            //liAp1.InnerText = translations.SelectTranslation("Apartment", GetActiveLanguage()).Result + " A1";
            //liAp2.InnerText = translations.SelectTranslation("Apartment", GetActiveLanguage()).Result + " A2";
            //liAp3.InnerText = translations.SelectTranslation("Apartment", GetActiveLanguage()).Result + " A3";
            //liAp4.InnerText = translations.SelectTranslation("Apartment", GetActiveLanguage()).Result + " A4";
            //liAp5.InnerText = translations.SelectTranslation("Apartment", GetActiveLanguage()).Result + " A5";
          
            ap1ShortDescription.InnerText = translations.SelectTranslation("Ap1ShortDescription", GetActiveLanguage()).Result;
            ap1LongDescription.InnerText = translations.SelectTranslation("Ap1LongDescription", GetActiveLanguage()).Result;
            ap2ShortDescription.InnerText = translations.SelectTranslation("Ap2ShortDescription", GetActiveLanguage()).Result;
            ap2LongDescription.InnerText = translations.SelectTranslation("Ap2LongDescription", GetActiveLanguage()).Result;
            ap3ShortDescription.InnerText = translations.SelectTranslation("Ap3ShortDescription", GetActiveLanguage()).Result;
            ap3LongDescription.InnerText = translations.SelectTranslation("Ap3LongDescription", GetActiveLanguage()).Result;
            //ap4ShortDescription.InnerText = translations.SelectTranslation("Ap4ShortDescription", GetActiveLanguage()).Result;
            //ap4LongDescription.InnerText = translations.SelectTranslation("Ap4LongDescription", GetActiveLanguage()).Result;
            //ap5ShortDescription.InnerText = translations.SelectTranslation("Ap5ShortDescription", GetActiveLanguage()).Result;
            //ap5LongDescription.InnerText = translations.SelectTranslation("Ap5LongDescription", GetActiveLanguage()).Result;
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