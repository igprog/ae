using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using IGPROG;
using System.Data;
using System.Data.SqlClient;


public partial class PP5Instalacija : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            InsertInstalationStatistic();
        }
    }

    protected void InsertInstalationStatistic()
    {
        string version = "Program Prehrane 5.0 Demo";
        string action = "Instalacija";
        DateTime date = DateTime.Now.Date;
        string ipAdress = Request.UserHostAddress;

        Properties properties = new Properties();
        SqlConnection connection = new SqlConnection(properties.ConnectionString);
        connection.Open();
        try
        {
            SqlCommand command = new SqlCommand(
                "INSERT INTO InstalationStatistic VALUES (@Version, @Action, @Date, @IpAdress)", connection);
            command.Parameters.Add(new SqlParameter("Version", version));
            command.Parameters.Add(new SqlParameter("Action", action));
            command.Parameters.Add(new SqlParameter("Date", date));
            command.Parameters.Add(new SqlParameter("ipAdress", ipAdress));
            command.ExecuteNonQuery();
        }
        catch
        {
            return;
        }

    }

}