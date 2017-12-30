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


public partial class Calendar : System.Web.UI.Page
{
    Properties properties = new Properties();
    Scheduler scheduler = new Scheduler();
    Guests guest = new Guests();
    Int32 season = 0;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            this.Page.Master.FindControl("divFooterLinks").Visible = false;
            String language = GetActiveLanguage();
            season = Convert.ToInt32(DateTime.Today.Month.ToString()) < 10 ? DateTime.Today.Year : DateTime.Today.Year + 1;
            litPageTitle.Text = Renderer.RenderPageTitle(GetActiveLanguage(), "Calendar");
            litCalendar.Text = Renderer.RenderCalndar(language);
            PrepeareCalendar();
            PopulateCalendar();
        }
    }

    private String GetActiveLanguage()
    {
        string lang = "eng";
        try { lang = Request.QueryString["lang"].ToString(); }
        catch (Exception ex) { }
        return lang.ToString();
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
               
                string apartmentNo = guest.ApartmentCollection[i];
                int apartment = 1;

                    if (guest.ApartmentCollection[i].Contains("1") && confirmation == true)
                    {
                        apartment = 1;
                        AppendTerms(confirmation, apartment, arrival, departure, firstName, lastName);
                    }
                    if (guest.ApartmentCollection[i].Contains("2") && confirmation == true)
                    {
                        apartment = 2;
                        AppendTerms(confirmation, apartment, arrival, departure, firstName, lastName);

                    }
                    if (guest.ApartmentCollection[i].Contains("3") && confirmation == true)
                    {
                        apartment = 3;
                        AppendTerms(confirmation, apartment, arrival, departure, firstName, lastName);
                    }

                    //if (guest.ApartmentCollection[i].Contains("4") && confirmation == true)
                    //{
                    //    apartment = 4;
                    //    AppendTerms(confirmation, apartment, arrival, departure, firstName, lastName);
                    //}
                    //if (guest.ApartmentCollection[i].Contains("5") && confirmation == true)
                    //{
                    //    apartment = 5;
                    //    AppendTerms(confirmation, apartment, arrival, departure, firstName, lastName);
                    //}
            }
        }

    }


    private void AppendTerms(Boolean confirmation, Int32 apartment, DateTime arrival, DateTime departure, string firstName, string lastName)
    {
        if (confirmation == true)
        {
            for (int j = 0; j < gvCalendar.Rows.Count; j++)
            {
                if (Convert.ToDateTime(gvCalendar.Rows[j].Cells[0].Text) == arrival)
                {
                    gvCalendar.Rows[j].Cells[apartment].BackColor = System.Drawing.Color.LightSeaGreen;
                 //   gvCalendar.Rows[j].Cells[apartment].ToolTip = appendToolTip(firstName, lastName, apartment, arrival, departure);
                }
                if (Convert.ToDateTime(gvCalendar.Rows[j].Cells[0].Text) > arrival
                    && Convert.ToDateTime(gvCalendar.Rows[j].Cells[0].Text) < departure)
                {
                    gvCalendar.Rows[j].Cells[apartment].BackColor = System.Drawing.Color.LightSkyBlue;
                  //  gvCalendar.Rows[j].Cells[apartment].ToolTip = appendToolTip(firstName, lastName, apartment, arrival, departure);
                }
            }
        }
    }


    private static string appendToolTip(string firstName, string lastName, Int32 apartment, DateTime arrival, DateTime departure)
    {
        StringBuilder sb = new StringBuilder();
        sb.AppendLine(string.Format(
@"{0} {1}
Apartman: {2}
Dolazak: {3:d.M.yyyy}
Odlazak: {4:d.M.yyyy}"
        , firstName
        , lastName
        , apartment
        , arrival
        , departure));

        return sb.ToString();
    }

}