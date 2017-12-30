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

public partial class Administration_EditLinks : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["supervisor"] == null)
                Response.Redirect("Login.aspx");
        }
    }


    protected void InsertLink(Guid idLink, string linkCode, string title, string linkUrl, string linkPosition, Guid idParent, int linkOrder, bool isVisible)
    {

        Properties properties = new Properties();
        SqlConnection connection = new SqlConnection(properties.ConnectionString);
        connection.Open();
        try
        {
            SqlCommand command = new SqlCommand(
                "INSERT INTO Links VALUES (@idLink, @linkCode, @title, @linkUrl, @linkPosition, @idParent, @linkOrder, @isVisible)", connection);
            command.Parameters.Add(new SqlParameter("idLink", idLink));
            command.Parameters.Add(new SqlParameter("linkCode", linkCode));
            command.Parameters.Add(new SqlParameter("title", title));
            command.Parameters.Add(new SqlParameter("linkUrl", linkUrl));
            command.Parameters.Add(new SqlParameter("linkPosition", linkPosition));
            command.Parameters.Add(new SqlParameter("idParent", idParent));
            command.Parameters.Add(new SqlParameter("linkOrder", linkOrder));
            command.Parameters.Add(new SqlParameter("isVisible", isVisible));
            command.ExecuteNonQuery();
        }
        catch
        {
            return;
        }

    }


    protected void btnInsertLink_Click(object sender, EventArgs e)
    {
        Guid idLink = Guid.NewGuid();
        string linkCode = txtLinkCode.Text;
        string title = txtTitle.Text;
        string linkUrl = txtLinkUrl.Text;
        string linkPosition = txtLinkPosition.Text;
        int linkOrder = Convert.ToInt32(txtLinkOrder.Text);
        Guid idParent = idLink;
        bool isVisible = cbIsVisible.Checked;

        InsertLink(idLink, linkCode, title, linkUrl, linkPosition, idParent, linkOrder, isVisible);
        InsertTranslations(linkCode, title, title, title);

        //   Response.Redirect(Request.Url.AbsoluteUri);

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