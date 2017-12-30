using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using IGPROG;
using System.Configuration;
//using System.Xml;

public partial class Administration_EditTranslations : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["supervisor"] == null)
                Response.Redirect("Login.aspx");
        }
    }

    protected void btnInsert_Click(object sender, EventArgs e)
    {
        string translationId = txtTranslationId.Text;
        string croatian = txtCroatian.Text;
        string english = txtEnglish.Text;
        string german = txtGerman.Text;

        InsertTranslations(translationId, croatian, english, german);
        gvTranslations.DataBind();
    }

    protected void InsertTranslations(string translationId, string croatian, string english, string german)
    {
        Properties properties = new Properties();
        SqlConnection connection = new SqlConnection(properties.ConnectionString);
        connection.Open();
        try
        {
            SqlCommand command = new SqlCommand(
                "INSERT INTO Translations VALUES (@TranslationId, @Croatian, @English, @German)", connection);
            command.Parameters.Add(new SqlParameter("TranslationId", translationId));
            command.Parameters.Add(new SqlParameter("Croatian", croatian));
            command.Parameters.Add(new SqlParameter("English", english));
            command.Parameters.Add(new SqlParameter("German", german));
            command.ExecuteNonQuery();
        }
        catch
        {
            return;
        }
    }
}