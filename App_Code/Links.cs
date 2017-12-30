using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace IGPROG
{
    /// <summary>
    /// Summary description for Links
    /// </summary>
    public class Links
    {

        private string _Result;
        private string _Title;
        private Int32? _LinkOrder;
        private Boolean? _IsVisible;
        private List<String> _LinkCodeCollection;
        private List<String> _LinkTitleCollection;
        private List<String> _LinkUrlCollection;
      


        public Links()
        {
            _Result = null;
            _Title = null;
            _LinkOrder = null;
            _IsVisible = null;
            _LinkCodeCollection = new List<string>();
            _LinkTitleCollection = new List<string>();
            _LinkUrlCollection = new List<string>();
            
        }


        public string Result { get; set; }
        public string Title { get { return _Title; } }

        public Int32? LinkOrder
        {
            get { return _LinkOrder; }
            set { _LinkOrder = value; }
        }

        public bool? IsVisible
        {
            get { return _IsVisible; }
            set { _IsVisible = value; }
        }

        public List<String> LinkCodeCollection
        {
            get { return _LinkCodeCollection; }
            set { _LinkCodeCollection = value; }
        }

        public List<String> LinkTitleCollection
        {
            get { return _LinkTitleCollection; }
            set { _LinkTitleCollection = value; }
        }

        public List<String> LinkUrlCollection
        {
            get { return _LinkUrlCollection; }
            set { _LinkUrlCollection = value; }
        }

        public Links GetLinksByLinkPosition(string position, bool IsVisible)
        {
            Links links = new Links();
            Properties properties = new Properties();
            SqlConnection connection = new SqlConnection(properties.ConnectionString);
            connection.Open();
            SqlCommand command = new SqlCommand(
                "SELECT * FROM Links WHERE Position = @Position AND IsVisible = @IsVisible ORDER BY LinkOrder", connection);
            command.Parameters.Add(new SqlParameter("Position", position));
            command.Parameters.Add(new SqlParameter("IsVisible", IsVisible));

            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
            links.Result = reader.GetString(2);
            _LinkCodeCollection.Add(reader.GetString(1));
            _LinkTitleCollection.Add(reader.GetString(2));
            _LinkUrlCollection.Add(reader.GetString(3));
            }

            connection.Close();

            return links;
           
        }
    }

}