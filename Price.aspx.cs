using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using IGPROG;

public partial class Price : System.Web.UI.Page
{
    Properties properties = new Properties();
    CalculatePrice calculatePrice = new CalculatePrice();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            String lang = GetActiveLanguage();
            litPageTitle.Text = Renderer.RenderPageTitle(GetActiveLanguage(), "Price");
            PrepareForm(GetActiveLanguage());

         }
    }

    private string GetActiveLanguage()
    {
        string lang = "eng";
        try { lang = Request.QueryString["lang"].ToString(); }
        catch (Exception ex) { }
        return lang.ToString();
    }


    private void PrepareForm(String language)
    {
        Translations translations = new Translations();
        period.InnerText = translations.SelectTranslation("Period", language).Result;
        apartment.InnerText = translations.SelectTranslation("Apartment", language).Result;

            litPriceShortDescription.Text = string.Format(@"
                <p>{0}</p>"
            , translations.SelectTranslation("PriceShortDescription", language).Result);

      //  ddlPersons.Items.Add("");
      //  for (int i = 1; i < 25; i++)
      //  {
      //      string a = Convert.ToString(i);
      //      ddlPersons.Items.Add(a);
      //  }

      //  lblArrival.Text = translations.SelectTranslation("Arrival", language).Result;
      //  lblDeparture.Text = translations.SelectTranslation("Departure", language).Result;
      //  lblPersons.Text = translations.SelectTranslation("NumberOfPersons", language).Result;
      ////  lblAirconditioning.Text = translations.SelectTranslation("Airconditioning", language).Result;
      //  btnCalculatePrice.Text = translations.SelectTranslation("Calculate", language).Result;

    }

    //protected void btnCalculatePrice_Click(object sender, EventArgs e)
    //{
    //    DateTime arrival = BDPArrival.SelectedDate.Date;
    //    DateTime departure = BDPDeparture.SelectedDate.Date;
    //    Int32 persons = Convert.ToInt32(ddlPersons.SelectedValue);


    //    bool airconditioning = true;
    //        // cbAirconditioning.Checked == true ? true : false;

    //    calculatePrice.Calculate(arrival, departure, persons, airconditioning);
      
    //    litCalculationResult.Text = AppendResult();  // calculatePrice.TotalPrice.ToString(); // AppendResult(totalPrice);
    //}



    private string AppendResult()
    {
        String lang = GetActiveLanguage();

        StringBuilder sb = new StringBuilder();
        Translations translations = new Translations();

        sb.AppendLine(string.Format(@"
                <h3>{0}: {1} €</h3>"
            , translations.SelectTranslation("TotalPrice", lang).Result
            , calculatePrice.TotalPrice.ToString()));

        return sb.ToString();

    }





}