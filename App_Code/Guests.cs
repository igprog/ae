using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using IGPROG;

/// <summary>
/// Summary description for Guests
/// </summary>
public class Guests
{

    private string _Name;

    private int? _GuestId;
    private DateTime? _InquireDate;
    private string _FirstName;
    private string _LastName;
    private string _Email;
    private DateTime? _Arrival;
    private DateTime? _Departure;
    private int? _Days;
    private int? _Adults;
    private int? _Children;
    private string _Message;
    private string _Apartment;
    private double? _PricePerDay;
    private double? _TotalPrice;
    private double? _Deposit;
    private double? _RestToPay;
    private Boolean? _Confirmation;
    private DateTime? _ConfirmationDate;
    private string _Annotation;

    private List<Int32> _GuestsIdCollection;
    private List<String> _FirstNameCollection;
    private List<String> _LastNameCollection;
    private List<DateTime> _ArrivalCollection;
    private List<DateTime> _DepartureCollection;
    private List<Int32> _DaysCollection;
    private List<String> _ApartmentCollection;
    private List<Decimal> _TotalPriceCollection;
    private List<Decimal> _DepositCollection;
    private List<Decimal> _RestToPayCollection;
    private List<Boolean> _ConfirmationCollection;

	public Guests()
	{
		//
		// TODO: Add constructor logic here
		//
        _Name = null;

        _GuestId = null;
        _InquireDate = null;
        _Arrival = null;
        _FirstName = null;
        _LastName = null;
        _Email = null;
        _Departure = null;
        _Days = null;
        _Adults = null;
        _Children = null;
        _Message = null;
        _Apartment = null;
        _PricePerDay = null;
        _TotalPrice = null;
        _Deposit = null;
        _RestToPay= null;
        _Confirmation = null;
        _ConfirmationDate = null;
        _Annotation = null;

        _GuestsIdCollection = new List<Int32>();
        _FirstNameCollection = new List<String>();
        _LastNameCollection = new List<String>();
        _ArrivalCollection = new List<DateTime>();
        _DepartureCollection = new List<DateTime>();
        _ApartmentCollection = new List<String>();
        _DaysCollection = new List<Int32>();
        _TotalPriceCollection = new List<Decimal>();
        _DepositCollection = new List<Decimal>();
        _RestToPayCollection = new List<Decimal>();
        _ConfirmationCollection = new List<Boolean>();

	}

    public int? GuestId
    {
        get { return _GuestId; }
        set { _GuestId = value; }
    }

    public string Name
    {
        get { return _Name; }
        set { _Name = value; }
    }

    public DateTime? InquireDate
    {
        get { return _InquireDate; }
        set { _InquireDate = value; }
    }

    public string FirstName
    {
        get { return _FirstName; }
        set { _FirstName = value; }
    }

    public string LastName
    {
        get { return _LastName; }
        set { _LastName = value; }
    }

    public string Email
    {
        get { return _Email; }
        set { _Email = value; }
    }

    public DateTime? Arrival
    {
        get { return _Arrival; }
        set { _Arrival = value; }
    }

    public DateTime? Departure
    {
        get { return _Departure; }
        set { _Departure = value; }
    }

    public int? Days
    {
        get { return _Days; }
        set { _Days = value; }
    }

    public int? Adults
    {
        get { return _Adults; }
        set { _Adults = value; }
    }

    public int? Children
    {
        get { return _Children; }
        set { _Children = value; }
    }

    public string Message
    {
        get { return _Message; }
        set { _Message = value; }
    }

    public string Apartment
    {
        get { return _Apartment; }
        set { _Apartment = value; }
    }

    public double? PricePerDay
    {
        get { return _PricePerDay; }
        set { _PricePerDay = value; }
    }

    public double? TotalPrice
    {
        get { return _TotalPrice; }
        set { _TotalPrice = value; }
    }

    public double? Deposit
    {
        get { return _Deposit; }
        set { _Deposit = value; }
    }

    public double? RestToPay
    {
        get { return _RestToPay; }
        set { _RestToPay = value; }
    }

    public Boolean? Confirmation
    {
        get { return _Confirmation; }
        set { _Confirmation = value; }
    }

    public DateTime? ConfirmationDate
    {
        get { return _ConfirmationDate; }
        set { _ConfirmationDate = value; }
    }

    public string Annotation
    {
        get { return _Annotation; }
        set { _Annotation = value; }
    }

    public List<Int32> GuestsIdCollection
    {
        get { return _GuestsIdCollection; }
        set { _GuestsIdCollection = value; }
    }

    public List<String> FirstNameCollection
    {
        get { return _FirstNameCollection; }
        set { _FirstNameCollection = value; }
    }

    public List<String> LastNameCollection
    {
        get { return _LastNameCollection; }
        set { _LastNameCollection = value; }
    }

    public List<DateTime> ArrivalCollection
    {
        get { return _ArrivalCollection; }
        set { _ArrivalCollection = value; }
    }

    public List<DateTime> DepartureCollection
    {
        get { return _DepartureCollection; }
        set { _DepartureCollection = value; }
    }

    public List<Int32> DaysCollection
    {
        get { return _DaysCollection; }
        set { _DaysCollection = value; }
    }

    public List<String> ApartmentCollection
    {
        get { return _ApartmentCollection; }
        set { _ApartmentCollection = value; }
    }

    public List<Decimal> TotalPriceCollection
    {
        get { return _TotalPriceCollection; }
        set { _TotalPriceCollection = value; }
    }

    public List<Decimal> DepositCollection
    {
        get { return _DepositCollection; }
        set { _DepositCollection = value; }
    }

    public List<Decimal> RestToPayCollection
    {
        get { return _RestToPayCollection; }
        set { _RestToPayCollection = value; }
    }

    public List<Boolean> ConfirmationCollection
    {
        get { return _ConfirmationCollection; }
        set { _ConfirmationCollection = value; }
    }

    public void InsertGuest()
    {
        Properties properties = new Properties();
        SqlConnection connection = new SqlConnection(properties.ConnectionString);
        connection.Open();
        try
        {
            string sql = @"INSERT INTO Guests
                        VALUES  
                       (@InquireDate,
                        @FirstName,
                        @LastName,
                        @Email,
                        @Arrival,
                        @Departure,
                        @Days,
                        @Adults,
                        @Children,
                        @Message,
                        @Apartment,
                        @PricePerDay,
                        @TotalPrice,
                        @Deposit,
                        @RestToPay,
                        @Confirmation,
                        @ConfirmationDate,
                        @Annotation)";

            SqlCommand command = new SqlCommand(sql, connection);

            command.Parameters.Add(new SqlParameter("InquireDate", InquireDate));
            command.Parameters.Add(new SqlParameter("FirstName", FirstName));
            command.Parameters.Add(new SqlParameter("LastName", LastName));
            command.Parameters.Add(new SqlParameter("Email", Email));
            command.Parameters.Add(new SqlParameter("Arrival", Arrival));
            command.Parameters.Add(new SqlParameter("Departure", Departure));
            command.Parameters.Add(new SqlParameter("Days", Days));
            command.Parameters.Add(new SqlParameter("Adults", Adults));
            command.Parameters.Add(new SqlParameter("Children", Children));
            command.Parameters.Add(new SqlParameter("Message", Message));
            command.Parameters.Add(new SqlParameter("Apartment", Apartment));
            command.Parameters.Add(new SqlParameter("PricePerDay", PricePerDay));
            command.Parameters.Add(new SqlParameter("TotalPrice", TotalPrice));
            command.Parameters.Add(new SqlParameter("Deposit", Deposit));
            command.Parameters.Add(new SqlParameter("RestToPay", RestToPay));
            command.Parameters.Add(new SqlParameter("Confirmation", Confirmation));
            command.Parameters.Add(new SqlParameter("ConfirmationDate", ConfirmationDate));
            command.Parameters.Add(new SqlParameter("Annotation", Annotation));

            command.ExecuteNonQuery();

            connection.Close();
        }
        catch (Exception ex) 
        {
            return;
        }

    }

    public Guests GetAllGuestsId()
    {
        Guests guests = new Guests();
        Properties properties = new Properties();
        SqlConnection connection = new SqlConnection(properties.ConnectionString);
        connection.Open();
        SqlCommand command = new SqlCommand(
            "SELECT GuestId FROM Guests", connection);
       
        SqlDataReader reader = command.ExecuteReader();
        while (reader.Read())
        {
            _GuestsIdCollection.Add(reader.GetInt32(0));
            _FirstNameCollection.Add(reader.GetString(2));
            //_ArrivalCollection.Add(reader.GetDateTime(5));
            //_DepartureCollection.Add(reader.GetDateTime(6));
        }
        connection.Close();
        return guests;
    }

    public Guests GetAllGuests(Int32 season)
    {
        string startDate = season + "-01-01";
        string endDate = Convert.ToString(season + 1) + "-01-01";
        Guests guests = new Guests();
        Properties properties = new Properties();
        SqlConnection connection = new SqlConnection(properties.ConnectionString);
        connection.Open();
        SqlCommand command = new SqlCommand(
            "SELECT * FROM Guests WHERE Arrival >= Convert(datetime, @startDate) AND Arrival < @endDate", connection);

        command.Parameters.Add(new SqlParameter("startDate", startDate));
        command.Parameters.Add(new SqlParameter("endDate", endDate));

        SqlDataReader reader = command.ExecuteReader();
        while (reader.Read())
        {
            _GuestsIdCollection.Add(reader.GetInt32(0));
            _FirstNameCollection.Add(reader.GetString(2));
            _LastNameCollection.Add(reader.GetString(3));
            _ArrivalCollection.Add(reader.GetDateTime(5));
            _DepartureCollection.Add(reader.GetDateTime(6));
            _DaysCollection.Add(reader.GetInt32(7));
            _ApartmentCollection.Add(reader.GetString(11));
            _TotalPriceCollection.Add(reader.GetDecimal(13));
            _DepositCollection.Add(reader.GetDecimal(14));
            _RestToPayCollection.Add(reader.GetDecimal(15));
            _ConfirmationCollection.Add(reader.GetBoolean(16));
        }
        connection.Close();
        return guests;
    }

    public Guests GetGuestById(Int32 GuestId)
    {
        Guests guest = new Guests();
        Properties properties = new Properties();
        SqlConnection connection = new SqlConnection(properties.ConnectionString);
        connection.Open();
        SqlCommand command = new SqlCommand(
            "SELECT * FROM Guests WHERE GuestId = @GuestId ", connection);

        command.Parameters.Add(new SqlParameter("GuestId", GuestId));

        SqlDataReader reader = command.ExecuteReader();
       

        while (reader.Read())
        {
            guest.FirstName = reader.GetString(2);
            guest.LastName = reader.GetString(3);
            guest.Arrival = reader.GetDateTime(5);
            guest.Departure = reader.GetDateTime(6);
        }
        connection.Close();
        return guest;

    }







}