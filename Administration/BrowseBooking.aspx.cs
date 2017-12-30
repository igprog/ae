using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using IGPROG;
using System.Data;
using System.Data.SqlClient;
using System.Text;

public partial class Administration_BrowseBooking : System.Web.UI.Page
{
    Scheduler scheduler = new Scheduler();
    Guests guest = new Guests();
    Int32 season = 0;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["login"] == null)
                Response.Redirect("Login.aspx");

            litCalendar.Text = Renderer.RenderCalndar("hr");
            populateYears();
            ShowGuestList();
            PrepeareCalendar();
            PopulateCalendar();
        }
    }


    protected void populateYears()
    {
        ddlYear.Items.Add("2016");
        ddlYear.Items.Add("2017");
        ddlYear.Items.Add("2018");
        ddlYear.Items.Add("2019");
        ddlYear.Items.Add("2020");
        ddlYear.Items.Add("2021");
        ddlYear.Items.Add("2022");
        ddlYear.Items.Add("2023");
        ddlYear.Items.Add("2024");
        ddlYear.Items.Add("2025");
        ddlYear.SelectedValue = Convert.ToInt32(DateTime.Today.Month.ToString()) < 10 ? DateTime.Today.Year.ToString() : Convert.ToString(DateTime.Today.Year + 1);
        season = Convert.ToInt32(ddlYear.SelectedValue);
    }

    protected void ShowGuestList()
    {
        Guests guest = new Guests();
        guest.GetAllGuests(season);

        int[] guestsIdCollection = guest.GuestsIdCollection.ToArray();
        string[] firstNameCollection = guest.FirstNameCollection.ToArray();
        DateTime[] arrivalCollection = guest.ArrivalCollection.ToArray();
        DateTime[] departureCollection = guest.DepartureCollection.ToArray();
        int[] daysIdCollection = guest.DaysCollection.ToArray();
        StringBuilder sb = new StringBuilder();
        int counter = 0;
        Decimal SumTotalPrice = 0;
        Decimal SumDeposit = 0;
        Decimal SumRestToPay = 0;

        if (guest.GuestsIdCollection.Count > 0)
        {
            sb.AppendLine(@"<div><table class=""table table-bordered"" border='1'>
                  <tr class=""tableHeader"">
                    <th>Br.</th>
                    <th>Ime</th>
                    <th>Prezime</th>
                    <th>Dolazak</th>
                    <th>Odlazak</th>
                    <th>Dana</th>
                    <th>Apartman</th>
                    <th>Cijena ukupno</th>
                    <th>Akontacija</th>
                    <th>Ostatak za uplatu</th>
                  </tr>");
            for (int i = 0; i < guest.GuestsIdCollection.Count; i++)
            {
                string firstName = guest.FirstNameCollection[i];
                string lastName = guest.LastNameCollection[i];
                DateTime arrival = guest.ArrivalCollection[i];
                DateTime departure = guest.DepartureCollection[i];
                String apartment = guest.ApartmentCollection[i];
                Int32 days = guest.DaysCollection[i];
                Decimal totalPrice = guest.TotalPriceCollection[i];
                Decimal deposit = guest.DepositCollection[i];
                Decimal restToPay = guest.RestToPayCollection[i];
                Boolean confirmation = guest.ConfirmationCollection[i];
                counter++;

                if (confirmation == true)
                {

                SumTotalPrice = SumTotalPrice + totalPrice;
                SumDeposit = SumDeposit + deposit;
                SumRestToPay = SumRestToPay + restToPay;
               
                    sb.AppendLine(string.Format(@"
                            <tr>
                                <td>{0}</td>
                                <td>{1}</td>
                                <td>{2}</td>
                                <td>{3:dd.MM.yyyy}</td>
                                <td>{4:dd.MM.yyyy}</td>
                                <td>{5}</td>
                                <td>{6}</td>
                                <td align=""right"">{7}</td>
                                <td align=""right"">{8}</td>
                                <td align=""right"">{9}</td>
                            </tr>"
                        , counter
                        , firstName
                        , lastName
                        , arrival
                        , departure
                        , days
                        , apartment
                        , totalPrice
                        , deposit
                        , restToPay));
                }
   
            }

            sb.AppendLine(string.Format(@"
                            <tr>
                                <td colspan=""7"" align=""right"">Suma (€):</td>
                                <td bgcolor=""#000000"" align=""right""><b><font color=""#00FF00"">{0}</font></b></td>
                                <td bgcolor=""#000000"" align=""right""><b><font color=""#00FF00"">{1}</font></b></td>
                                <td bgcolor=""#000000"" align=""right""><b><font color=""#00FF00"">{2}</font></b></td>
                            </tr>"
                       , SumTotalPrice
                       , SumDeposit
                       , SumRestToPay));

            sb.AppendLine(@"</table></div>");
        }


        litBooking.Text = sb.ToString();

    }

    protected void PrepeareCalendar()
    {
        scheduler.DeleteCalendar();

        DateTime dt = new DateTime(season, 5, 1);
        DateTime startDate = dt;
        int startDayOfYear = startDate.Date.DayOfYear;
        int endDayOfYear = startDayOfYear + 184;
        int count = 0;
        for (int i = startDayOfYear; i < endDayOfYear; i++)
        {
            scheduler.Date = startDate.AddDays(count);
            scheduler.Apartment1 = "";
            scheduler.Apartment2 = "";
            scheduler.Apartment3 = "";
            //scheduler.Apartment4 = "";
            //scheduler.Apartment5 = "";

            scheduler.PrepeareCalendar();
            count++;
        }

        gvCalendar.DataBind();

        for (int j = 0; j < gvCalendar.Rows.Count; j++)
        {
            if (Convert.ToDateTime(gvCalendar.Rows[j].Cells[0].Text).Date.DayOfWeek.ToString() == Convert.ToString(DayOfWeek.Saturday))
            {
                gvCalendar.Rows[j].Cells[0].BackColor = System.Drawing.Color.WhiteSmoke;
            }
            if (Convert.ToDateTime(gvCalendar.Rows[j].Cells[0].Text).Date.DayOfWeek.ToString() == Convert.ToString(DayOfWeek.Sunday))
            {
                gvCalendar.Rows[j].Cells[0].BackColor = System.Drawing.Color.LightGray;
            }
        }
    }


    private void PopulateCalendar()
    {
        guest.GetAllGuests(season);

        int[] guestsIdCollection = guest.GuestsIdCollection.ToArray();
        string[] firstNameCollection = guest.FirstNameCollection.ToArray();
        DateTime[] arrivalCollection = guest.ArrivalCollection.ToArray();
        DateTime[] departureCollection = guest.DepartureCollection.ToArray();

        if (guest.GuestsIdCollection.Count > 0)
        {
            for (int i = 0; i < guest.GuestsIdCollection.Count; i++)
            {
                string firstName = guest.FirstNameCollection[i];
                string lastName = guest.LastNameCollection[i];
                DateTime arrival = guest.ArrivalCollection[i];
                DateTime departure = guest.DepartureCollection[i];
                Boolean confirmation = guest.ConfirmationCollection[i];
                Decimal restToPay = guest.RestToPayCollection[i];

                string apartmentNo = guest.ApartmentCollection[i];
                int apartment = 1;

                if (guest.ApartmentCollection[i].Contains("1") && confirmation == true)
                {
                    apartment = 1;
                    AppendTerms(confirmation, apartment, arrival, departure, firstName, lastName, restToPay);
                }
                if (guest.ApartmentCollection[i].Contains("2") && confirmation == true)
                {
                    apartment = 2;
                    AppendTerms(confirmation, apartment, arrival, departure, firstName, lastName, restToPay);

                }
                if (guest.ApartmentCollection[i].Contains("3") && confirmation == true)
                {
                    apartment = 3;
                    AppendTerms(confirmation, apartment, arrival, departure, firstName, lastName, restToPay);
                }

                //if (guest.ApartmentCollection[i].Contains("4") && confirmation == true)
                //{
                //    apartment = 4;
                //    AppendTerms(confirmation, apartment, arrival, departure, firstName, lastName, restToPay);
                //}
                //if (guest.ApartmentCollection[i].Contains("5") && confirmation == true)
                //{
                //    apartment = 5;
                //    AppendTerms(confirmation, apartment, arrival, departure, firstName, lastName, restToPay);
                //}
            }
        }

    }

    private void AppendTerms(Boolean confirmation, Int32 apartment, DateTime arrival, DateTime departure, string firstName, string lastName, Decimal restToPay)
    {
        if (confirmation == true)
        {
            for (int j = 0; j < gvCalendar.Rows.Count; j++)
            {
                if (Convert.ToDateTime(gvCalendar.Rows[j].Cells[0].Text) == arrival)
                {
                    gvCalendar.Rows[j].Cells[apartment].BackColor = System.Drawing.Color.LightSeaGreen;
                    gvCalendar.Rows[j].Cells[apartment].ToolTip = appendToolTip(firstName, lastName, apartment, arrival, departure, restToPay);
                }
                if (Convert.ToDateTime(gvCalendar.Rows[j].Cells[0].Text) > arrival
                    && Convert.ToDateTime(gvCalendar.Rows[j].Cells[0].Text) < departure)
                {
                    gvCalendar.Rows[j].Cells[apartment].BackColor = System.Drawing.Color.LightSkyBlue;
                    gvCalendar.Rows[j].Cells[apartment].ToolTip = appendToolTip(firstName, lastName, apartment, arrival, departure, restToPay);
                }
            }
        }
    }


    private static string appendToolTip(string firstName, string lastName, Int32 apartment, DateTime arrival, DateTime departure, Decimal restToPay)
    {
        StringBuilder sb = new StringBuilder();
        sb.AppendLine(string.Format(
@"{0} {1}
Apartman: A{2}
Dolazak: {3:d.M.yyyy}
Odlazak: {4:d.M.yyyy}
Za platiti: {5}€"
        , firstName
        , lastName
        , apartment
        , arrival
        , departure
        , restToPay));

        return sb.ToString();
    }

    protected void ddlYear_SelectedIndexChanged(object sender, EventArgs e)
    {
        season = Convert.ToInt32(ddlYear.SelectedValue);
        ShowGuestList();
        PrepeareCalendar();
        PopulateCalendar();
       
    }
}