using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using IGPROG;
using System.Configuration;


namespace IGPROG
{
    /// <summary>
    /// Summary description for ClassPodaci
    /// </summary>
    public class Properties
    {
        private string _ConnectionString;
        private string _SiteURL;
        private string _Copyright;
        private string _LeftBanner;
        private string _MainImage;
        private string _SiteURLTitle;

        private string _Title;
        private string _ShortDescription;
        private string _LongDescription;
        //private string _Name;
        //private string _Adress;
        //private string _Zip;
        //private string _City;
        //private string _Country;
        //private string _Tel;
        //private string _GSM;
        private string _Iban;
        private string _SwiftCode;
        private string _YouTubeId;


        private string _Link1;
        private string _Link1Title;
        private string _Link2;
        private string _Link2Title;
        private string _Link3;
        private string _Link3Title;
        private string _Link4;
        private string _Link4Title;
        private string _Link5;
        private string _Link5Title;
        private string _Link6;
        private string _Link6Title;

        private string _Logo;

        private string _LeftBanner1;
        private string _LeftBanner2;
        private string _LeftBanner3;
        private string _LeftBanner4;
        private string _LeftBanner5;

        private string _LeftBanner1Description;
        private string _LeftBanner2Description;
        private string _LeftBanner3Description;
        private string _LeftBanner4Description;
        private string _LeftBanner5Description;
        
        private string _Message;

        private string _MyEmail;
        private string _MyPassword;
        private int _MyServerPort;
        private string _MyServerHost;

        private string _AdditionalMail;

        private string _ProgramPrehrane5HrFileName;
        private string _ProgramPrehrane5RsFileName;

        private double _HrkEurRate;
        private string _CultureInfo;
        private string _BrowserLanguage;


        public Properties()
        {
            _ConnectionString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
            _SiteURL = ConfigurationManager.AppSettings["SiteUrl"].ToString();  // "http://www.programprehrane.com";
            _SiteURLTitle = "www.ProgramPrehrane.com";
            _Copyright = "Copyright (c)";
            _LeftBanner = "Images/eJelovniciLaptop.gif";
            _MainImage = "images/PP5_laptop.jpg";
            _Logo = "images/logo.gif";

            _Title = "PROGRAM PREHRANE";
            _ShortDescription = "Softver za izradu uravnoteženih jelovnika";
            _LongDescription = "Program Prehrane 5.0 je raèunalni program za izradu raznovrsnih i uravnoteženih jelovnika i plana tjelesne aktivnosti.";

            //_Name = "Igor Gašparoviæ";
            //_Adress = "Ludvetov breg 5";
            //_Zip = "51000";
            //_City = "Rijeka";
            //_Country = "Hrvatska";
            //_Tel = "++385 (0)51 633 125";
            //_GSM = "++385 (0)98 330 966";
            _Iban = "HR84 2340 0091 1603 4249 6";
            _SwiftCode = "PBZGHR2X";
            _YouTubeId = "gCsPz9WacAo"; //"v=gCsPz9WacAo";

            _Link1 = "Index.aspx";
            _Link1Title = "Poèetna";
            _Link2 = "ProgramPrehrane.aspx";
            _Link2Title = "O programu";
            _Link3 = "ProgramPrehraneDownload.aspx";
            _Link3Title = "Download";
            _Link4 = "ProgramPrehraneCijena.aspx";
            _Link4Title = "Cijena";
            _Link5 = "Narudzba.aspx";
            _Link5Title = "Narudžba";
            _Link6 = "Kontakt.aspx";
            _Link6Title = "Kontakt";

          

            _LeftBanner1 = "images/inova34.jpg";
            _LeftBanner2 = "images/inova37.jpg";
            _LeftBanner3 = "images/inventum2013.jpg";
            _LeftBanner4 = "images/AgroArca.jpg";
            _LeftBanner5 = "images/downloadhr.gif";

            _LeftBanner1Description = "Zlatna medalja na 34. hrvatskom salonu inovacija INOVA 2009 (Verzija 1.0 iz 2008 g.)";
            _LeftBanner2Description = "Zlatna medalja na 37. salonu inovacija INOVA 2012, sa meðunarodnim sudjelovanjem (Verzija 2.0 iz 2012 g)";
            _LeftBanner3Description = "Srebrna medalja na sajmu INVENTUM 2013 g. (Verzija 3.0 iz 2012 g)";
            _LeftBanner4Description = "Plaketa na sajmu Agro Arca 2013. godine (Verzija 4.0 iz 2013 g)";
            _LeftBanner5Description = "Plaketa na sajmu Agro Arca 2013. godine (Verzija 4.0 iz 2013 g)";
        
            _MyEmail = "igprog@yahoo.com";
            _MyPassword = "Tel546360";
            _MyServerPort = 587;
            _MyServerHost = "smtp.mail.yahoo.com";

            _AdditionalMail = "igor.gasparovic@st.htnet.hr";

            _ProgramPrehrane5HrFileName = "download/hr/ProgramPrehrane5.exe";
            _ProgramPrehrane5RsFileName = "download/rs/ProgramPrehrane5S.exe";

            _HrkEurRate = 7.56;
            _CultureInfo = "";
            _BrowserLanguage = "";
            // _Message = "aaaa";

         
        }

        
        public string ConnectionString
        {
            get
            {
                return _ConnectionString;
            }
        }

        public string SiteURL
        {
            get
            {
                return _SiteURL;
            }
        }

        public string SiteURLTitle
        {
            get
            {
                return _SiteURLTitle;
            }
        }

        public string Copyright
        {
            get
            {
                return _Copyright;
            }
        }


        public string LeftBanner
        {
            get
            {
                return _LeftBanner;
            }
        }

        public string MainImage
        {
            get
            {
                return _MainImage;
            }
        }

        public string Logo
        {
            get
            {
                return _Logo;
            }
        }


        public string Title
        {
            get
            {
                return _Title;
            }
        }

        public string ShortDescription
        {
            get
            {
                return _ShortDescription;
            }
        }

        public string LongDescription
        {
            get
            {
                return _LongDescription;
            }

        }

        //public string Name
        //{
        //    get
        //    {
        //        return _Name;
        //    }
        //}

        //public string Adress
        //{
        //    get
        //    {
        //        return _Adress;
        //    }
        //}

        //public string Zip
        //{
        //    get
        //    {
        //        return _Zip;
        //    }
        //}

        //public string City
        //{
        //    get
        //    {
        //        return _City;
        //    }
        //}

        //public string Country
        //{
        //    get
        //    {
        //        return _Country;
        //    }
        //}

        //public string Tel
        //{
        //    get
        //    {
        //        return _Tel;
        //    }
        //}

        //public string GSM
        //{
        //    get
        //    {
        //        return _GSM;
        //    }
        //}

        public string Iban
        {
            get
            {
                return _Iban;
            }
        }

        public string SwiftCode
        {
            get
            {
                return _SwiftCode;
            }
        }

        public string YouTubeId
        {
            get
            {
                return _YouTubeId;
            }
        }

      


        public string Link1
        {
            get
            {
                return _Link1;
            }
        }

        public string Link1Title
        {
            get
            {
                return _Link1Title;
            }
        }

        public string Link2
        {
            get
            {
                return _Link2;
            }
        }

        public string Link2Title
        {
            get
            {
                return _Link2Title;
            }
        }

        public string Link3
        {
            get
            {
                return _Link3;
            }
        }

        public string Link3Title
        {
            get
            {
                return _Link3Title;
            }
        }

        public string Link4
        {
            get
            {
                return _Link4;
            }
        }

        public string Link4Title
        {
            get
            {
                return _Link4Title;
            }
        }

        public string Link5
        {
            get
            {
                return _Link5;
            }
        }

        public string Link5Title
        {
            get
            {
                return _Link5Title;
            }
        }

        public string Link6
        {
            get
            {
                return _Link6;
            }
        }

        public string Link6Title
        {
            get
            {
                return _Link6Title;
            }
        }

        public string LeftBanner1
        {
            get
            {
                return _LeftBanner1;
            }
        }

        public string LeftBanner2
        {
            get
            {
                return _LeftBanner2;
            }
        }

        public string LeftBanner3
        {
            get
            {
                return _LeftBanner3;
            }
        }

        public string LeftBanner4
        {
            get
            {
                return _LeftBanner4;
            }
        }

        public string LeftBanner5
        {
            get
            {
                return _LeftBanner5;
            }
        }

        public string LeftBanner1Description
        {
            get
            {
                return _LeftBanner1Description;
            }
        }

        public string LeftBanner2Description
        {
            get
            {
                return _LeftBanner2Description;
            }
        }

        public string LeftBanner3Description
        {
            get
            {
                return _LeftBanner3Description;
            }
        }

        public string LeftBanner4Description
        {
            get
            {
                return _LeftBanner4Description;
            }
        }

        public string LeftBanner5Description
        {
            get
            {
                return _LeftBanner5Description;
            }
        }


        public string MyEmail
        {
            get
            {
                return _MyEmail;
            }
        }

        public string MyPassword
        {
            get
            {
                return _MyPassword;
            }
        }

        public int MyServerPort
        {
            get
            {
                return _MyServerPort;
            }
        }

        public string MyServerHost
        {
            get
            {
                return _MyServerHost;
            }
        }

        public string AdditionalMail
        {
            get
            {
                return _AdditionalMail;
            }
        }


        public string ProgramPrehrane5CroFileName
        {
            get
            {
                return _ProgramPrehrane5HrFileName;
            }
        }

        public string ProgramPrehrane5SrbFileName
        {
            get
            {
                return _ProgramPrehrane5RsFileName;
            }
        }

        public double HrkEurRate
        {
            get
            {
                return _HrkEurRate;
            }
        }

        public string CultureInfo
        {
            get
            {
                return _CultureInfo;
            }
            set
            {
                _CultureInfo = value;
            }
        }

        public string BrowserLanguage
        {
            get
            {
                return _BrowserLanguage;
            }
            set
            {
                _BrowserLanguage = value;
            }
        }



    




        public string Message
        {
            get
            {
                return _Message;
            }
            set
            {
                _Message = value;
            }
        }



        public void GetBrowserLanguage()
        {
            string[] languages = HttpContext.Current.Request.UserLanguages;
            if (languages != null || languages.Length != 0)
            {
                try
                {
                    string language = languages[0].ToLowerInvariant().Trim();
                    _CultureInfo = language;
                    if (language == "hr" || language == "en" || language == "en-gb" || language == "de")
                    {
                        if (language == "en" || language == "en-gb")
                        { language = "en"; }
                    }
                    else { language = "en"; }

                    _BrowserLanguage = language;
                }
                catch (ArgumentException){ }
            }
        }




    }


}