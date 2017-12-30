using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using IGPROG;


public partial class Contact : System.Web.UI.Page
{
    Properties properties = new Properties();

    protected void Page_Load(object sender, EventArgs e)
    {
       
        if (!IsPostBack)
        {
            String lang = GetActiveLanguage();
            litPageTitle.Text = Renderer.RenderPageTitle(GetActiveLanguage(), "Contact");
            litContact.Text = Renderer.RenderContact(lang);
            Translations translations = new Translations();
        }
    }

    private string GetActiveLanguage()
    {
        string lang = "eng";
        try { lang = Request.QueryString["lang"].ToString(); }
        catch (Exception ex) { }
        return lang.ToString();
    }


    private void ReadLanguageCookie()
    {
        ApplicationSettings applicationSettings = new ApplicationSettings();
        //Read Cookie
          HttpCookie languageCookie = new HttpCookie("ActiveLanguage");
        languageCookie = Request.Cookies["ActiveLanguage"];

        // Read the cookie information and display it.
        if (languageCookie != null)
        {
            //Response.Write("<p>" + languageCookie.Name + "<p>" + languageCookie.Value);
            //applicationSettings.ActiveLanguage = Convert.ToInt32(languageCookie.Value);
        }
        //else
        //{
        //    Response.Write("not found");
        //}
    }


    //private string ReadActiveLanguage()
    //{
    //    ApplicationSettings applicationSettings = new ApplicationSettings();
        
    //    HttpCookie languageCookie = new HttpCookie("ActiveLanguage");
    //    languageCookie = Request.Cookies["ActiveLanguage"];

    //   string language = "";
    //    if (languageCookie != null)
    //    {
    //        language = "3";
    //        language = languageCookie.Value;
    //     }

    //    return language.ToString();
       

    //}
}