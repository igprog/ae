using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using IGPROG;

public partial class Booking : System.Web.UI.Page
{
    Properties properties = new Properties();
    Guests guest = new Guests();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            this.Page.Master.FindControl("divFooterLinks").Visible = false;
            string lang = GetActiveLanguage();
            litPageTitle.Text = Renderer.RenderPageTitle(GetActiveLanguage(), "UnbindigRequest");
            //Int32 language = GetActiveLanguage();
          //  litBooking.Text = Renderer.RenderBooking(lang);
            PrepareForm(lang);
          //  PrepareForm(); 
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

        ddlAdults.Items.Add("");
        ddlChildren.Items.Add("");
        for (int i = 1; i < 25; i++)
        {
            string a = Convert.ToString(i);
            ddlAdults.Items.Add(a);
            ddlChildren.Items.Add(a);
        }

        //cbApartments.Items.Add(new ListItem(translations.SelectTranslation("Apartment1", language).Result, "1"));
        //cbApartments.Items.Add(new ListItem(translations.SelectTranslation("Apartment2", language).Result, "2"));
        //cbApartments.Items.Add(new ListItem(translations.SelectTranslation("Apartment3", language).Result, "3"));

        litBookingDescription.Text = Renderer.RenderBooking(language);

        lblInfoMessage.Text = "";
        txtEmail.Text = "";
        lblFirstName.Text = translations.SelectTranslation("FirstName", language).Result;
        lblLastName.Text = translations.SelectTranslation("LastName", language).Result;
        lblArrival.Text = translations.SelectTranslation("Arrival", language).Result;
        lblDeparture.Text = translations.SelectTranslation("Departure", language).Result;
        lblAdults.Text = translations.SelectTranslation("Adults", language).Result;
        lblChildren.Text = translations.SelectTranslation("Children", language).Result;
        //lblShowMore.Text = translations.SelectTranslation("ShowMore", language).Result;
        //lblApartment.Text = translations.SelectTranslation("ChooseApartment", language).Result;
        //lblAirconditioning.Text = translations.SelectTranslation("Airconditioning", language).Result;
        lblEmail.Text = translations.SelectTranslation("Email", language).Result;
        lblAnnotation.Text = translations.SelectTranslation("Annotation", language).Result;
        btnSendMail.Text = translations.SelectTranslation("SendInquiry", language).Result;
        lblBookingForm.InnerText = translations.SelectTranslation("BookingForm", language).Result;
    }

    private void ColectDataFromForm()
    {
        CalculatePrice calculatePrice = new CalculatePrice();

        DateTime arrival = BDPArrival.SelectedDate.Date;
        DateTime departure = BDPDeparture.SelectedDate.Date;
        TimeSpan daysSpan = departure - arrival;
        int days = Convert.ToInt32(daysSpan.TotalDays);

        Int32 persons =
            ddlAdults.SelectedValue != "" ? Convert.ToInt32(ddlAdults.SelectedValue) : 0
            + ddlChildren.SelectedValue != "" ? Convert.ToInt32(ddlChildren.SelectedValue) : 0;

        bool airconditioning = true;
             //cbAirconditioning.Checked == true ? true : false;

        calculatePrice.Calculate(arrival, departure, persons, airconditioning);

        double pricePerDay = Convert.ToDouble(calculatePrice.PricePerDay);
        double totalPrice = Convert.ToDouble(calculatePrice.TotalPrice);
        double deposit = Math.Round(totalPrice * 0.1, 0);
        double restToPay = totalPrice - deposit;

        guest.InquireDate = DateTime.Today.Date;
        guest.FirstName = txtFirstName.Text;
        guest.LastName = txtLastName.Text;
        guest.Arrival = arrival;
        guest.Departure = departure;


        string selectedApartments = "";
        string comma = "";
        int counter = 0;

        //foreach (ListItem apartmentNo in cbApartments.Items)
        //{
        //    if (apartmentNo.Selected)
        //    {
        //        if (counter == 0){comma = "";}else{comma = ", ";}
        //        selectedApartments = selectedApartments + comma + apartmentNo.Value;
        //    }
        //    counter++;
        //}
        if (selectedApartments == "") selectedApartments = "0";
        
        guest.Apartment = selectedApartments;
        guest.Days = days;
        guest.Adults = ddlAdults.SelectedValue !=""  ? Convert.ToInt32(ddlAdults.SelectedValue) : 0 ;
        guest.Children = ddlChildren.SelectedValue !="" ? Convert.ToInt32(ddlChildren.SelectedValue) : 0;
        guest.Email = txtEmail.Text;
        guest.Message = txtMessage.Text;
        guest.PricePerDay = pricePerDay;
        guest.TotalPrice =  totalPrice;
        guest.Deposit = deposit;
        guest.RestToPay = restToPay;
        guest.Confirmation = false;
        guest.ConfirmationDate = DateTime.Today.Date;
        guest.Annotation = txtMessage.Text;

        guest.InsertGuest();
    }

    protected void btnSendMail_Click(object sender, EventArgs e)
    {
        //TODO
        String language = GetActiveLanguage();
        ColectDataFromForm();
        SendMail(language);
    }

    private void SendMail(String language)
    {
        SendMail sendMail = new SendMail();
        ApplicationSettings applicationSettings = new ApplicationSettings();
        
        string sendToEmail = applicationSettings.MyEmail;
        string messageSubject = applicationSettings.SiteTitle + " - Novi upit";
        string messageBody = MessageBody();
        string successMessage = SuccessMessage(language);
        string messageToCustomer = MessageToCustomer(language);
        string errorMessage = ErrorMessage(language);

        sendMail.Send(sendToEmail, messageSubject, messageBody, successMessage, messageToCustomer, errorMessage);
        lblInfoMessage.Text = sendMail.InfoMessage;
      //  litBooking.Visible = false;
        divInfoMessage.Visible = true;
        divQueryForm.Visible = false;
    }

    private string MessageSubject()
    {
        StringBuilder sb = new StringBuilder();
        sb.AppendLine("Novi upit");

        return sb.ToString();
    }

    private string MessageBody()
    {
        string airconditioning = "Ne";
        StringBuilder sb = new StringBuilder();
        sb.AppendLine(string.Format(@"
Novi upit:

Ime: {0}
Prezime: {1}
Email: {2}
Dolazak: {3:dd.MM.yyyy}
Odlazak: {4:dd.MM.yyyy}
Broj odraslih: {5}
Broj djece: {6}
Napomena: {7}"
            , guest.FirstName
            , guest.LastName
            , guest.Email
            , guest.Arrival
            , guest.Departure
            , guest.Adults
            , guest.Children
            , guest.Annotation));
        return sb.ToString();
    }

    private string SuccessMessage(String language)
    {
        Translations translations = new Translations();
        StringBuilder sb = new StringBuilder();
        sb.AppendLine(string.Format(@"
                <p style=""color:Green"">{0}</p>"
            , translations.SelectTranslation("YourMessageWasSentSuccessfully", language).Result));

        return sb.ToString();
    }

    private string MessageToCustomer(String language)
    {
        Translations translations = new Translations();
    
        StringBuilder sb = new StringBuilder();
        sb.AppendLine(string.Format(@"Hello,"));

        return sb.ToString();

    }


    private string ErrorMessage(String language)
    {
        StringBuilder sb = new StringBuilder();
        Translations translations = new Translations();

        sb.AppendLine(string.Format(@"
                    <p style=""color:Red"">{0}</p>"
            , translations.SelectTranslation("TheMessageWasNotSuccessfullySent", language).Result));

        return sb.ToString();
    }


}