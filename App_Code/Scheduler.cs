using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using IGPROG;

/// <summary>
/// Summary description for Scheduler
/// </summary>
public class Scheduler
{

  //  private int _DayOfYear;
    private DateTime? _Date;
    private string _Apartment1;
    private string _Apartment2;
    private string _Apartment3;
    private string _Apartment4;
    private string _Apartment5;

	public Scheduler()
	{
		//
		// TODO: Add constructor logic here
		//

     //   _DayOfYear = 1;
        _Date = null;
        _Apartment1 = null;
        _Apartment2 = null;
        _Apartment3 = null;
        _Apartment4 = null;
        _Apartment5 = null;

	}

    //public int DayOfYear
    //{
    //    get { return _DayOfYear; }
    //    set { _DayOfYear = value; }
    //}

    public DateTime? Date
    {
        get { return _Date; }
        set { _Date = value; }
    }

    public string Apartment1
    {
        get { return _Apartment1; }
        set { _Apartment1 = value; }
    }

    public string Apartment2
    {
        get { return _Apartment2; }
        set { _Apartment2 = value; }
    }

    public string Apartment3
    {
        get { return _Apartment3; }
        set { _Apartment3 = value; }
    }

    public string Apartment4
    {
        get { return _Apartment4; }
        set { _Apartment4 = value; }
    }

    public string Apartment5
    {
        get { return _Apartment5; }
        set { _Apartment5 = value; }
    }



    public void PrepeareCalendar()
    {

        Properties properties = new Properties();
        SqlConnection connection = new SqlConnection(properties.ConnectionString);
        connection.Open();
        try
        {
            string sql = @"INSERT INTO Calendar
                        VALUES  
                       (@Date,
                        @Apartment1,
                        @Apartment2,
                        @Apartment3)";

            SqlCommand command = new SqlCommand(sql, connection);

            command.Parameters.Add(new SqlParameter("Date", Date));
            command.Parameters.Add(new SqlParameter("Apartment1", Apartment1));
            command.Parameters.Add(new SqlParameter("Apartment2", Apartment2));
            command.Parameters.Add(new SqlParameter("Apartment3", Apartment3));

            command.ExecuteNonQuery();

            connection.Close();
        }
        catch (Exception ex)
        {
            return;
        }


    }

    public void DeleteCalendar()
    {
        Properties properties = new Properties();
        SqlConnection connection = new SqlConnection(properties.ConnectionString);
        connection.Open();
        try
        {
            string sql = @"TRUNCATE TABLE Calendar";

            SqlCommand command = new SqlCommand(sql, connection);
            command.ExecuteNonQuery();

            connection.Close();
        }
        catch (Exception ex)
        {
            return;
        }

    }



}