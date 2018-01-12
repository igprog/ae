using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace IGPROG
{
    /// <summary>
    /// Summary description for Translations
    /// </summary>
    public class Translations
    {
        private string _ActiveLanguage;
        private string _Result;
        private string _SiteTitleId;


        public Translations()
        {
            _ActiveLanguage = "en";
            _Result = null;
            _SiteTitleId = null;

        }

        public string ActiveLanguage { get; set; }
        public string Result { get; set; }
        public string SiteTitleId { get { return _SiteTitleId; } }
     
        public Translations SelectTranslation(string siteTitleId, string lang) {
            try {
                Translations translation = new Translations();
                Properties properties = new Properties();
                SqlConnection connection = new SqlConnection(properties.ConnectionString);
                connection.Open();
                SqlCommand command = new SqlCommand(
                    "SELECT * FROM Translations WHERE TranslationId = @SiteTitleId", connection);
                command.Parameters.Add(new SqlParameter("SiteTitleId", siteTitleId));
                SqlDataReader reader = command.ExecuteReader();
                while (reader.Read()) {
                    translation.Result = reader.GetString(GetActiveLanguage(lang));
                }
                connection.Close();
                return translation;
            } catch(Exception e) {
                return new Translations();
            }
        }

        private Int32 GetActiveLanguage(string lang)
        {
            Int32 language = 2;
            if (lang == "hr") { language = 2; }
            if (lang == "en") { language = 3; }
            if (lang == "de") { language = 4; }

            return language;
        }





    }

}