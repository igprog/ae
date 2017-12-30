using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using IGPROG;

public partial class Administration_NewBooking : System.Web.UI.Page
{
    Guests guest = new Guests();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["login"] == null)
            {
                Response.Redirect("Login.aspx");
            }

            PrepareForm(GetActiveLanguage());
   
        }
    }

    private string GetActiveLanguage()
    {
        string lang = "hr";
        //try { lang = Request.QueryString["lang"].ToString(); }
        //catch (Exception ex) { }
        return lang;
    }

    private void PrepareForm(String language)
    {
        Translations translations = new Translations();

        ddlAdults.Items.Add("");
        ddlChildren.Items.Add("");
        for (int i = 1; i < 13; i++)
        {
            string a = Convert.ToString(i);
            ddlAdults.Items.Add(a);
            ddlChildren.Items.Add(a);
        }

      
        cbApartments.Items.Add(new ListItem("Apartman A1", "1"));
        cbApartments.Items.Add(new ListItem("Apartman A2", "2"));
        cbApartments.Items.Add(new ListItem("Apartman A3", "3"));
        //cbApartments.Items.Add(new ListItem("Apartman A4", "4"));
        //cbApartments.Items.Add(new ListItem("Apartman A5", "5"));

       
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
        btnSubmit.Text = "SPREMI"; // translations.SelectTranslation("Send", language).Result;
        lblBookingForm.InnerText = "Nova rezervacija"; // translations.SelectTranslation("BookingForm", language).Result;
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

        double pricePerDay = txtPricePerDay.Text != "" ? Convert.ToDouble(txtPricePerDay.Text) : 0; // Convert.ToDouble(calculatePrice.PricePerDay);
        double totalPrice = txtTotalPrice.Text != "" ? Convert.ToDouble(txtTotalPrice.Text) : 0; // Convert.ToDouble(calculatePrice.TotalPrice);
        double deposit = txtDeposit.Text != "" ? Convert.ToDouble(txtDeposit.Text) : 0;  // Math.Round(totalPrice * 0.1, 0);
        double restToPay = totalPrice - deposit;

        guest.InquireDate = DateTime.Today.Date;
        guest.FirstName = txtFirstName.Text;
        guest.LastName = txtLastName.Text;
        guest.Arrival = arrival;
        guest.Departure = departure;


        string selectedApartments = "";
        string comma = "";
        int counter = 0;

        foreach (ListItem apartmentNo in cbApartments.Items)
        {
            if (apartmentNo.Selected)
            {
                if (selectedApartments == "") { comma = ""; } else { comma = ", "; }
                    selectedApartments = selectedApartments + comma + apartmentNo.Value;
            }
            counter++;
        }
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
        guest.Confirmation = true;
        guest.ConfirmationDate = DateTime.Today;

        guest.InsertGuest();

        divInfoMessage.Visible = true;
        lblInfoMessage.Text = "Rezervacija uspješno spremljena.";
    }
      protected void btnSubmit_Click(object sender, EventArgs e)
    {
        ColectDataFromForm();
    }
}