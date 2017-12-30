using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using IGPROG;

/// <summary>
/// Summary description for GallerySql
/// </summary>
public class GallerySql
{
    private Guid _IdGallery;
    private string _Image;
    private Boolean? _IsVisible;
    private Int32? _ImageOrder;
    private List<String> _ImageCollection;


	public GallerySql()
	{
        _IdGallery = Guid.NewGuid();
        _Image = null;
        _IsVisible = null;
        _ImageOrder = null;
        _ImageCollection = new List<string>();

	}

    public Guid IdGallery
    {
        get { return _IdGallery; }
        set { _IdGallery = value; }
    }

    public string Image
    {
        get { return _Image; }
        set { _Image = value; }
    }

    public bool? IsVisible
    {
        get { return _IsVisible; }
        set { _IsVisible = value; }
    }

    public Int32? ImageOrder
    {
        get { return _ImageOrder; }
        set { _ImageOrder = value; }
    }

    public List<String> ImageCollection
    {
        get { return _ImageCollection; }
        set { _ImageCollection = value; }
    }



    public void InsertImage()
    {
        Properties properties = new Properties();
        SqlConnection connection = new SqlConnection(properties.ConnectionString);
        connection.Open();
        try
        {
            string sql = @"INSERT INTO Gallery
                        VALUES  
                       (@IdGallery,
                        @Image,
                        @IsVisible,
                        @ImageOrder)";

            SqlCommand command = new SqlCommand(sql, connection);

            command.Parameters.Add(new SqlParameter("IdGallery", IdGallery));
            command.Parameters.Add(new SqlParameter("Image", Image));
            command.Parameters.Add(new SqlParameter("IsVisible", IsVisible));
            command.Parameters.Add(new SqlParameter("ImageOrder", ImageOrder));

            command.ExecuteNonQuery();

            connection.Close();
        }
        catch (Exception ex)
        {
            return;
        }
    }

    public GallerySql GetVisibleGallery(bool IsVisible)
    {
        GallerySql gallery = new GallerySql();
        Properties properties = new Properties();
        SqlConnection connection = new SqlConnection(properties.ConnectionString);
        connection.Open();
        SqlCommand command = new SqlCommand(
            "SELECT * FROM Gallery WHERE IsVisible = @IsVisible ORDER BY ImageOrder ASC", connection);
        command.Parameters.Add(new SqlParameter("IsVisible", IsVisible));

        SqlDataReader reader = command.ExecuteReader();
        while (reader.Read())
        {
            _ImageCollection.Add(reader.GetString(1));  
        }

        connection.Close();

        return gallery;

    }


}