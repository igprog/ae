using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;
using IGPROG;

namespace IGPROG
{
    /// <summary>
    /// Summary description for Renderer
    /// </summary>
       
    public class Renderer
    {

        public static string RenderTopNav(String language)
        {
            StringBuilder sb = new StringBuilder();
            Translations translations = new Translations();

            sb.AppendLine(string.Format(@"
                        <li><a class=""topNav"" href=""{0}""><i hidden=""hidden"" class=""fa fa-home showOnMobile""></i> {1}</a></li>
                        <li><a class=""topNav"" href=""{2}""><i hidden=""hidden"" class=""fa fa-image showOnMobile""></i> {3}</a></li>
                        <li><a class=""topNav"" href=""{4}""><i class=""fa fa-hotel showOnMobile""></i> {5}</a></li>
                        <li><a class=""topNav"" href=""{6}""><i class=""fa fa-euro showOnMobile""></i> {7}</a></li>
                        <li><a class=""topNav"" href=""{8}""><i class=""fa fa-calendar showOnMobile""></i> {9}</a></li>
                        <li><a class=""topNav"" href=""{10}""><i class=""fa fa-envelope-o showOnMobile""></i> {11}</a></li>
                        <li><a class=""topNav"" href=""{12}""><i class=""fa fa-map-marker showOnMobile""></i> {13}</a></li>
                        <li><a class=""topNav"" href=""{14}""><i class=""fa fa-info showOnMobile""></i> {15}</a></li>"
                , "Index.aspx?lang=" + language
                , translations.SelectTranslation("Home", language).Result
                , "Gallery.aspx?lang=" + language
                , translations.SelectTranslation("Gallery", language).Result
                , "Accommodation.aspx?lang=" + language
                , translations.SelectTranslation("Apartments", language).Result
                , "Price.aspx?lang=" + language
                , translations.SelectTranslation("Price", language).Result
                , "Calendar.aspx?lang=" + language
                , translations.SelectTranslation("Calendar", language).Result
                , "Booking.aspx?lang=" + language
                , translations.SelectTranslation("Request", language).Result
                , "Location.aspx?lang=" + language
                , translations.SelectTranslation("Location", language).Result
                , "Contact.aspx?lang=" + language
                , translations.SelectTranslation("Contact", language).Result));

            return sb.ToString();
        }


        public static string RenderPageTitle(String language, String pageTitle)
        {
            StringBuilder sb = new StringBuilder();
            Translations translations = new Translations();

            sb.AppendLine(string.Format(@"
                    <h2>{0}</h2>
                    <hr class=""featurette-divider"">"
                 , translations.SelectTranslation(pageTitle, language).Result));

            return sb.ToString();
        }

        public static string RenderMainDescription(String language)
        {
            StringBuilder sb = new StringBuilder();
            Translations translations = new Translations();

            sb.AppendLine(string.Format(@"
                    <h2>{0} <span style=""font-size:26px; color:#0099cc"">{1}</span></h2>
                    <p>{2}</p>"
                 , translations.SelectTranslation("Welcome", language).Result
                 , "Brela"
                 , translations.SelectTranslation("SiteLongDescription", language).Result));

            return sb.ToString();
        }

        public static string RenderHomeDescription(String language)
        {
            StringBuilder sb = new StringBuilder();
            Translations translations = new Translations();

            sb.AppendLine(string.Format(@"
            <h2>{0}</h2>
            <p>{1}</p>
            <div>
            <a class=""btn btn-info btn-lg"" href=""{2}""><i class=""fa fa-image""></i> {3}</a>
            </div>"
                , translations.SelectTranslation("SiteTitle", language).Result
                , translations.SelectTranslation("HomeDescription", language).Result
                , "Gallery.aspx?lang=" + language
                , translations.SelectTranslation("Gallery", language).Result));
            
            return sb.ToString();
        }

        public static string RenderApartmentsDescription(String language)
        {
            StringBuilder sb = new StringBuilder();
            Translations translations = new Translations();

            sb.AppendLine(string.Format(@"
                <h2 class=""featurette-heading"">{0}</h2>
                <h3>{1}:</h3>
                <ul style=""font-size: 1em"">
                    <li>{2}</li>
                    <li>{3}</li>
                    <li>{4}</li>
                </ul>
            <div>
            <a class=""btn btn-info btn-lg"" href=""{6}""><i class=""fa fa-info""></i> {7}</a>
            </div>"
                , translations.SelectTranslation("Accommodation", language).Result
                , translations.SelectTranslation("AccommodationShortDescriptionTitle", language).Result
                , translations.SelectTranslation("Ap1ShortDescription", language).Result
                , translations.SelectTranslation("Ap2ShortDescription", language).Result
                , translations.SelectTranslation("Ap3ShortDescription", language).Result
                , translations.SelectTranslation("AccommodationShortDescription4", language).Result
                , "Accommodation.aspx?lang=" + language
                , translations.SelectTranslation("MoreInfo", language).Result));

            return sb.ToString();
        }


        public static string RenderDistances(String language)
        {
            StringBuilder sb = new StringBuilder();
            Translations translations = new Translations();

            sb.AppendLine(string.Format(@"
                    <div class=""divDistances"">
     <h2>{0}</h2>
               <table class=""table"">
                   <tr>
                       <td>{1}:
                       </td>
                       <td>30 m
                       </td>
                   </tr>
                    <tr>
                       <td>{2}:
                       </td>
                       <td>30 m
                       </td>
                   </tr>
                    <tr>
                       <td>{3}:
                       </td>
                       <td>1500 m
                       </td>
                   </tr>
                   <tr>
                       <td>{4}:
                       </td>
                       <td>100 m
                       </td>
                   </tr>
                   <tr>
                       <td>{5}:
                       </td>
                       <td>800 m
                       </td>
                   </tr>
                   <tr>
                       <td>{6}:
                       </td>
                       <td>1700 m
                       </td>
                   </tr>
                   <tr>
                       <td>{7}:
                       </td>
                       <td>12 km - Makarska
                       </td>
                   </tr>
                   <tr>
                       <td>{8}:
                       </td>
                       <td>500 m
                       </td>
                   </tr>
                   <tr>
                       <td>{9}:
                       </td>
                       <td>500 m
                       </td>
                   </tr>
                   <tr>
                       <td>{10}:
                       </td>
                       <td>100 m
                       </td>
                   </tr>
                   <tr>
                       <td>{11}:
                       </td>
                       <td>400 m
                       </td>
                   </tr>
                   <tr>
                       <td>{12}:
                       </td>
                       <td>400 m
                       </td>
                   </tr>
                   <tr>
                       <td>{13}:
                       </td>
                       <td>5 km
                       </td>
                   </tr>
                   <tr>
                       <td>{14}:
                       </td>
                       <td>1500 m
                       </td>
                   </tr>
                   <tr>
                       <td>{15}:
                       </td>
                       <td>1500 m
                       </td>
                   </tr>
                   <tr>
                       <td>{16}:
                       </td>
                       <td>5 km
                       </td>
                   </tr>
                   <tr>
                       <td>{17}:
                       </td>
                       <td>1500 m
                       </td>
                   </tr>
                   <tr>
                       <td>{18}:
                       </td>
                       <td>1500 m
                       </td>
                   </tr>
                   <tr>
                       <td>{19}:
                       </td>
                       <td>1500 m
                       </td>
                   </tr>
                   <tr>
                       <td>{20}:
                       </td>
                       <td>1200 m
                       </td>
                   </tr>
                   <tr>
                       <td>{21}:
                       </td>
                       <td>50 km - Split
                       </td>
                   </tr>
                   <tr>
                       <td>{22}:
                       </td>
                       <td>12 km - Makarska
                       </td>
                   </tr>
                   <tr>
                       <td>{23}:
                       </td>
                       <td>1500 m
                       </td>
                   </tr>
                    <tr>
                       <td>{24}:
                       </td>
                       <td>500 m
                       </td>
                   </tr>
                    <tr>
                       <td>{25}:
                       </td>
                       <td>10 km
                       </td>
                   </tr>
                    <tr>
                       <td>{26}:
                       </td>
                       <td>12 km - Makarska
                       </td>
                   </tr>
                    <tr>
                       <td>{27}:
                       </td>
                       <td>50 km - Split
                       </td>
                   </tr>
                    <tr>
                       <td>{28}:
                       </td>
                       <td>500 m
                       </td>
                   </tr>
                    <tr>
                       <td>{29}:
                       </td>
                       <td>5 km - Baška Voda
                       </td>
                   </tr>
                    <tr>
                       <td>{30}:
                       </td>
                       <td>70 km - Split
                       </td>
                   </tr>
               </table>
      </div>"
                 , translations.SelectTranslation("Distances", language).Result
                 , translations.SelectTranslation("Sea", language).Result
                 , translations.SelectTranslation("GravelBeach", language).Result
                 , translations.SelectTranslation("SandyBeach", language).Result
                 , translations.SelectTranslation("RockyBeach", language).Result
                 , translations.SelectTranslation("NudeBeach", language).Result
                 , translations.SelectTranslation("Center", language).Result
                 , translations.SelectTranslation("TheClosestTown", language).Result
                 , translations.SelectTranslation("FishRestaurant", language).Result
                 , translations.SelectTranslation("MeatRestaurant", language).Result
                 , translations.SelectTranslation("CaffeBar", language).Result
                 , translations.SelectTranslation("Shop", language).Result
                 , translations.SelectTranslation("Market", language).Result
                 , translations.SelectTranslation("FishMarket", language).Result
                 , translations.SelectTranslation("Ambulance", language).Result
                 , translations.SelectTranslation("Pharmacy", language).Result
                 , translations.SelectTranslation("Dentist", language).Result
                 , translations.SelectTranslation("Bank", language).Result
                 , translations.SelectTranslation("CashMachine", language).Result
                 , translations.SelectTranslation("PostOffice", language).Result
                 , translations.SelectTranslation("TennisCourt", language).Result
                 , translations.SelectTranslation("GolfCourse", language).Result
                 , translations.SelectTranslation("SportsCenter", language).Result
                 , translations.SelectTranslation("WellnessCenter", language).Result
                 , translations.SelectTranslation("KidsPlayground", language).Result
                 , translations.SelectTranslation("GasStation", language).Result
                 , translations.SelectTranslation("FerryPort", language).Result
                 , translations.SelectTranslation("CatamaranPort", language).Result
                 , translations.SelectTranslation("BusStation", language).Result
                 , translations.SelectTranslation("Marina", language).Result
                 , translations.SelectTranslation("Airport", language).Result));

            return sb.ToString();
        }


        public static string RenderFooterLinks(String language)
        {
            StringBuilder sb = new StringBuilder();
            Translations translations = new Translations();

            sb.AppendLine(string.Format(@"
                    <div class=""footerLinks"">
                        <hr class=""featurette-divider"">
                        <a id=""viewCalendar"" runat=""server"" class=""btn btn-info btn-lg"" href=""{0}""><i class=""fa fa-calendar""></i> {1}</a>
                        <a id=""sendInquiry"" runat=""server"" class=""btn btn-success btn-lg"" href=""{2}""><i class=""fa fa-envelope-o""></i> {3}</a>
                    </div>"
                , "Calendar.aspx?lang=" + language
                , translations.SelectTranslation("ViewCalendar", language).Result
                , "Booking.aspx?lang=" + language
                , translations.SelectTranslation("SendInquiry", language).Result));

            return sb.ToString();
        }



       // int language = 3;
        public static string RenderHeader(String lang)
        {
//            Int32 language = 3;
//            if (lang == "hr") { language = 2; }
            StringBuilder sb = new StringBuilder();
//            ApplicationSettings applicationSettings = new ApplicationSettings();
//            Translations translations = new Translations();
//          //  int language = applicationSettings.ActiveLanguage;
//            sb.AppendLine(string.Format(@"
//                    <div class=""divHeader hideOnMobile"">
//                        <h1 class=""siteTitle"">{1}</h1>
//                        <h2 class=""shortDescription hideOnMobile"">{2}</h2>
//                    </div>
//                    <div class=""divHeader showOnMobile"">
//                        <h1 class=""siteTitle"">{1}</h1>
//                    </div>"
//                , RenderLogo()
//                , translations.SelectTranslation("SiteTitle", language).Result
//                , translations.SelectTranslation("SiteShortDescription", language).Result));
           
            return sb.ToString();
        }

        public static string RenderLogo()
        {
            StringBuilder sb = new StringBuilder();
            Properties resource = new Properties();


            if (resource.Logo != "")
            {
                sb.AppendLine(string.Format(@"
                    <a href=""index.aspx"">
                    <img src=""{0}"" align=""middle"" width=""auto"" height=""auto"">
                    </a>"
                 , resource.Logo));
            }

            return sb.ToString();

        }


        public static string RenderLinks(string position, string CssClass, String lang)
        {
            StringBuilder sb = new StringBuilder();
//            Properties resource = new Properties();

//          //  ApplicationSettings applicationSettings = new ApplicationSettings();
//            Links links = new Links();
//            Translations translations = new Translations();
           
//           // int language = applicationSettings.ActiveLanguage;
//            Int32 language = 3;
//            if (lang == "hr") { language = 2; }
          
//            string[] linksCodeCollection = links.GetLinksByLinkPosition(position, true).LinkTitleCollection.ToArray();
//            string[] linksUrlCollection = links.LinkUrlCollection.ToArray();

//            if (links.LinkCodeCollection.Count > 0)
//            {


//                sb.AppendLine("<div class='divLinks'>");
//                sb.AppendLine("<ul>");
//                for (int i = 0; i < links.LinkCodeCollection.Count; i++)
//                {
//                    string linkUrl = links.LinkUrlCollection[i].ToString();
//                    string linkTitle = translations.SelectTranslation(links.LinkCodeCollection[i].ToString(), language).Result;
//                    //<a href="myfile.htm"><img src="rainbow.gif"></a> 
//                    string img = null;
//                    if (linkUrl == "Index.aspx") { img = "images/home87.png"; }
//                    if (linkUrl == "Accommodation.aspx") { img = "images/sleeping.png"; }
//                    if (linkUrl == "Price.aspx") { img = "images/euro6.png"; }
//                    if (linkUrl == "Calendar.aspx") { img = "images/calentar.png"; }
//                    if (linkUrl == "Booking.aspx") { img = "images/clipboard105.png"; }
//                    if (linkUrl == "Location.aspx") { img = "images/facebook30.png"; }
//                    if (linkUrl == "Contact.aspx") { img = "images/information51.png"; }
                    
//                    if (position == "left")
//                    {
//                        sb.AppendLine(string.Format(@"<a class=""{0}"" href=""{1}?lang={2}""><img src=""{4}"" height=""20"" width=""auto"">{3}</a></br>"
//                                        , CssClass
//                                        , linkUrl
//                                        , lang
//                                        , linkTitle
//                                        , img));
//                    }
//                    else
//                    {
//                        sb.AppendLine(string.Format(@"
//                        <li>
//                                <a class=""topLinks {0}"" href=""{1}?lang={2}"">
//                                <img src=""{4}"" height=""20"" width=""auto""> {3}
//                                </a>
//                        </li>"
//                                      , CssClass
//                                      , linkUrl
//                                      , lang
//                                      , linkTitle
//                                      , img));
//                    }
//                }
//                sb.AppendLine("</ul>");
//                sb.AppendLine("</div>");
//            }

            return sb.ToString();

        }



        //public static string RenderHorizontalLinks()
        //{
        //    StringBuilder sb = new StringBuilder();
        //    Properties resource = new Properties();

        //    ApplicationSettings applicationSettings = new ApplicationSettings();
        //    Links links = new Links();
        //    Translations translations = new Translations();

        //    int language = applicationSettings.ActiveLanguage;
        //    string position = "top";
        //    string[] linksCodeCollection = links.GetLinksByLinkPosition(position).LinkTitleCollection.ToArray();
        //    string[] linksUrlCollection = links.LinkUrlCollection.ToArray();

        //    if (links.LinkCodeCollection.Count > 0)
        //    {
        //        sb.AppendLine("<div id=divHorizontalLinks>");
        //        for (int i = 0; i < links.LinkCodeCollection.Count; i++)
        //        {
        //            string linkUrl = links.LinkUrlCollection[i].ToString();
        //            string linkTitle = translations.SelectTranslation(links.LinkCodeCollection[i].ToString(), language).Result;
        //            sb.AppendLine(string.Format(@" <a class=""a"" href=""{0}"">{1}</a> "
        //                            , linkUrl
        //                            , linkTitle));
        //        }
        //        sb.AppendLine("</div>");
        //    }

        //    return sb.ToString();

        //}

        public static string RenderVerticalLinks()
        {

            string sbURL = "";
            string sbURLTitle = "";
            StringBuilder sb = new StringBuilder();
            Properties properties = new Properties();


        


            //Priznanja
//            sb.AppendLine(string.Format(@"
//        <nav class=""verticalNav verticalBorder"">
//            <div>
//                        <h4>{0}</h4>
//                <div>  
//                    <img id=""LeftBanner1"" class=""LeftBanner""  src='{1}' align='middle' width='90%' height='90%'>
//                    <div id=""LeftBanner1Description"" class=""LeftBannerDescription"" hidden=""hidden""><p  align='justify'>{5}</p></div>
//                    <img id=""LeftBanner2"" class=""LeftBanner""  src='{2}' align='middle' width='90%' height='90%'>
//                    <div id=""LeftBanner2Description"" class=""LeftBannerDescription"" hidden=""hidden""><p  align='justify'>{6}</p></div>
//                    <img id=""LeftBanner3"" class=""LeftBanner""  src='{3}' align='middle' width='90%' height='90%'>
//                    <div id=""LeftBanner3Description"" class=""LeftBannerDescription"" hidden=""hidden""><p  align='justify'>{7}</p></div>
//                    <img id=""LeftBanner4"" class=""LeftBanner""  src='{4}' align='middle' width='90%' height='90%'>
//                    <div id=""LeftBanner4Description"" class=""LeftBannerDescription"" hidden=""hidden""><p  align='justify'>{8}</p></div>                     
//                </div>"
//            , "Priznanja:"
//            , properties.LeftBanner1
//            , properties.LeftBanner2
//            , properties.LeftBanner3
//            , properties.LeftBanner4
//            , properties.LeftBanner1Description
//            , properties.LeftBanner2Description
//            , properties.LeftBanner3Description
//            , properties.LeftBanner4Description));


//            sb.AppendLine(string.Format(@"
//                <div>
//                <br/><br/>
//                    <img id=""LeftBanner5"" class=""LeftBanner""  src='{0}' align='middle' width='90%' height='90%'>
//                    <div id=""LeftBanner6Description"" hidden=""hidden""><p  align='justify'>{1}</p></div>
//                </div>
//            </div>
//        </nav>"
//                , properties.LeftBanner5
//                ,properties.LeftBanner5Description
//                ));

            return sb.ToString();

        }


        public static string RenderVerticalLinksMobile()
        {
           
            StringBuilder sb = new StringBuilder();
            Properties properties = new Properties();

            //Priznanja
//            sb.AppendLine(string.Format(@"
//                        <h4>{0}</h4>
//                <div>  
//                    <img id=""LeftBanner1"" class=""LeftBanner""  src='{1}' align='middle' width='40%' height='40%'>
//                    <div id=""LeftBanner1DescriptionMobile"" class=""LeftBannerDescription"" hidden=""hidden""><p  align='justify'>{5}</p></div>
//                    <img id=""LeftBanner2"" class=""LeftBanner""  src='{2}' align='middle' width='40%' height='40%'>
//                    <div id=""LeftBanner2DescriptionMobile"" class=""LeftBannerDescription"" hidden=""hidden""><p  align='justify'>{6}</p></div>
//                    <img id=""LeftBanner3"" class=""LeftBanner""  src='{3}' align='middle' width='40%' height='40%'>
//                    <div id=""LeftBanner3DescriptionMobile"" class=""LeftBannerDescription"" hidden=""hidden""><p  align='justify'>{7}</p></div>
//                    <img id=""LeftBanner4"" class=""LeftBanner""  src='{4}' align='middle' width='40%' height='40%'>
//                    <div id=""LeftBanner4DescriptionMobile"" class=""LeftBannerDescription"" hidden=""hidden""><p  align='justify'>{8}</p></div>                     
//                </div>"
//            , "Priznanja:"
//            , properties.LeftBanner1
//            , properties.LeftBanner2
//            , properties.LeftBanner3
//            , properties.LeftBanner4
//            , properties.LeftBanner1Description
//            , properties.LeftBanner2Description
//            , properties.LeftBanner3Description
//            , properties.LeftBanner4Description));


//            sb.AppendLine(string.Format(@"
//                <div>
//                <br/><br/>
//                    <img id=""LeftBanner5"" class=""LeftBanner""  src='{0}' align='middle' width='40%' height='40%'>
//                    <div id=""LeftBanner6Description"" hidden=""hidden""><p  align='justify'>{1}</p></div>
//                </div>"
//                , properties.LeftBanner5
//                , properties.LeftBanner5Description
//                ));

            return sb.ToString();
        }


        public static string RenderRightVerticalLinks()
        {

            //string sbURL = "";
            //string sbURLTitle = "";
            StringBuilder sb = new StringBuilder();

//            sb.AppendLine(string.Format(@"
//                <div>
//                    <h4>Lokacija:</h4>
//                </div>"));




//            sb.AppendLine("<div class=alignLeft>");

//            int n = 6;  //number of vertical links
//            for (int i = 0; i < n; i++)
//            {
//                if (i == 0)
//                {
//                    sbURL = "http://www.program-prehrane.com";
//                    sbURLTitle = "Program Prehrane";
//                }
//                if (i == 1)
//                {
//                    sbURL = "http://www.program-prehrane.com/o_programu.htm";
//                    sbURLTitle = "O programu";
//                }
//                if (i == 2)
//                {
//                    sbURL = "http://www.program-prehrane.com/download.htm";
//                    sbURLTitle = "Download";
//                }
//                if (i == 3)
//                {
//                    sbURL = "http://program-prehrane.com";
//                    sbURLTitle = "Program Prehrane";
//                }
//                if (i == 4)
//                {
//                    sbURL = "http://program-prehrane.com";
//                    sbURLTitle = "Program Prehrane";
//                }
//                if (i == 5)
//                {
//                    sbURL = "http://program-prehrane.com";
//                    sbURLTitle = "Program Prehrane";
//                }

//                sb.AppendLine(string.Format(@"
//                    <a id=a2 href=""{0}"">{1}</a><br/><br/>"
//                   , sbURL
//                   , sbURLTitle));

//            }

//          sb.AppendLine("</div>");
            return sb.ToString();

        }


      
        //public static string RenderFooterLinks()
        //{
        //    StringBuilder sb = new StringBuilder();
        //    Properties resource = new Properties();
        //    ApplicationSettings applicationSettings = new ApplicationSettings();
        //    Links links = new Links();
        //    Translations translations = new Translations();

        //    int language = applicationSettings.ActiveLanguage;
        //    string position = "footer";
        //    string[] linksCodeCollection = links.GetLinksByLinkPosition(position).LinkTitleCollection.ToArray();
        //    string[] linksUrlCollection = links.LinkUrlCollection.ToArray();

        //    if (links.LinkCodeCollection.Count > 0)
        //    {
        //        sb.AppendLine("<div id=divFooterLinks>");
        //        for (int i = 0; i < links.LinkCodeCollection.Count; i++)
        //        {
        //            string linkUrl = links.LinkUrlCollection[i].ToString();
        //            string linkTitle = translations.SelectTranslation(links.LinkCodeCollection[i].ToString(),language).Result;
        //            sb.AppendLine(string.Format(@" <a href=""{0}"">{1}</a> "
        //                            , linkUrl
        //                            , linkTitle));
        //        }
        //        sb.AppendLine("</div>");
        //    }

        //    return sb.ToString();

        //}

        public static string RenderFooter()
        {
            StringBuilder sb = new StringBuilder();
            Properties resource = new Properties();

            sb.AppendLine(string.Format(@"
            <a href=""/administration"">Admin</a>""
          <p id=pCopyright>{0}</p>"
            , resource.SiteURLTitle));

            return sb.ToString();
        }



        public static string RenderIndex(Int32 language)
        {
            StringBuilder sb = new StringBuilder();
//            Translations translations = new Translations();

//            sb.AppendLine(string.Format(@"
//                            <div class=""longDescription"">
//                                 <p class=""p1"">{0}</p>
//                            </div>"
//                , translations.SelectTranslation("SiteLongDescription", language).Result));

//            sb.AppendLine(string.Format(@"
//                <div>
//                        <hr/>
//                    <table>
//                        <tr>
//                            <td class=""alignLeft"" style=""width:150px"">
//                            </td>
//                            <td class=""alignLeft""><p style=""text-decoration: underline"">{0}</p>
//                            </td>
//                        </tr>
//                        <tr>
//                            <td class=""alignLeft"" style=""width:100px"">
//                                <img src=""{11}"" align=""middle"" width=""35px"" height=""auto""> {1}
//                            </td>
//                            <td class=""alignLeft"">{2}
//                            </td>
//                        </tr>
//                        <tr>
//                            <td class=""alignLeft"" style=""width:100px"">
//                                <img src=""{12}"" align=""middle"" width=""35px"" height=""auto""> {3}
//                            </td>
//                            <td class=""alignLeft"">{4}
//                            </td>
//                        </tr>
//                        <tr>
//                            <td class=""alignLeft"" style=""width:100px"">
//                                <img src=""{13}"" align=""middle"" width=""35px"" height=""auto""> {5}
//                            </td>
//                            <td class=""alignLeft"">{6}
//                            </td>
//                        </tr>
//                        <tr>
//                            <td class=""alignLeft"" style=""width:100px"">
//                                <img src=""{14}"" align=""middle"" width=""35px"" height=""auto""> {7}
//                            </td>
//                            <td class=""alignLeft"">{8}
//                            </td>
//                        </tr>
//                        <tr>
//                            <td class=""alignLeft"" style=""width:100px"">
//                                <img src=""{15}"" align=""middle"" width=""35px"" height=""auto""> {9}
//                            </td>
//                            <td class=""alignLeft"">{10}
//                            </td>
//                        </tr>
//                    </table>
//                        <hr/>
//                </div>"
//            , translations.SelectTranslation("Distance", language).Result
//            , translations.SelectTranslation("Beach", language).Result
//            , "30 m"
//            , translations.SelectTranslation("Parking", language).Result
//            , "20 m"
//            , translations.SelectTranslation("Shop", language).Result
//            , "500 m"
//            , translations.SelectTranslation("Restaurant", language).Result
//            , "200 m"
//            , translations.SelectTranslation("Center", language).Result
//            , "1500 m"
//            , "images/swimming28.png"
//            , "images/transport122.png"
//            , "images/shop3.png"
//            , "images/plate7.png"
//            , "images/circle59.png"));

            return sb.ToString();
        }



//        public static string OldRenderContact()
//        {
//            StringBuilder sb = new StringBuilder();
//            ApplicationSettings applicationSettings = new ApplicationSettings();
//            Translations translations = new Translations();
//            int language = applicationSettings.ActiveLanguage;
//          //  Properties resource = new Properties();


//            sb.AppendLine("");
//            sb.AppendLine(string.Format(@"
//                        <div class='alignLeft lineHeight'>
//                            <p>{0}</p>
//                            <p>{10}: {1}, {2} {3}, {4}</p>
//                            <p>Tel: {5}</p>
//                            <p>GSM: {6}</p>
//                            <p>E-mail: <a href=""mailto:{7}?subject=Upit"">{7}</a></p>
//                            <p>Web: <a href=""{8}"">{9}</a></p>
//                        </div>"
//                , applicationSettings.Name
//                , applicationSettings.Address
//                , applicationSettings.PostalCode
//                , applicationSettings.City
//                , applicationSettings.Country
//                , applicationSettings.Tel
//                , applicationSettings.GSM
//                , applicationSettings.Email
//                , "#"
//                , "www..."
//                , translations.SelectTranslation("Adresa", language).Result));

//            return sb.ToString();

//        }

//        public static string RenderProgramPrehrane()
//        {

//            StringBuilder sb = new StringBuilder();
//            Properties resource = new Properties();

//            sb.AppendLine(string.Format(@"
//                    <div id=""divContentTitle"">
//                         <h3>{0}</h3>
//                    </div>"
//                , "O Programu Prehrane"));


//            return sb.ToString();

//        }

        public static string RenderRegistracija()
        {

            StringBuilder sb = new StringBuilder();
            Properties resource = new Properties();

//            sb.AppendLine(string.Format(@"
//                                <div><p>Registracija:<br/>{0}</p>
//                                <div/>"
//                                , resource.Name
//                                    ));


            return sb.ToString();


        }


//        public static string RenderLicenceTerm()
//        {
//            StringBuilder sb = new StringBuilder();
//            Properties resource = new Properties();

//            sb.AppendLine(string.Format
//                (@"Korisnička licenca
//
//    KORISNIČKA LICENCA definira prava KORISNIKA koja se odnose na instalaciju i upotrebu programskog RAČUNALNOG PROGRAMA PROGRAM PREHRANE 5.0, čiji su nositelji autorskih prava Igor Gašparović i Vesna Bosanac (VLASNIK). Predmetna licenca nije ekskluzivna, odnosno KORISNIKU daje samo točno definirana prava, ovdje opisana. PROGRAM PREHRANE 5.0 je RAČUNALNI PROGRAM za izradu uravnoteženog plana prehrane i tjelesne aktivnosti. Instalacijom i uporabom računalnog programa KORISNIK se obvezuje poštivati odredbe koje određuje KORISNIČKA LICENCA. PROGRAM PREHRANE 5.0 je kao autorski rad s područja intelektualnog vlasništva zaštićen Zakonom o zaštiti autorskih prava i međunarodnim ugovorima o autorskim pravima, te Kaznenim zakonom RH. RAČUNALNI PROGRAM PROGRAM PREHRANE 5.0 se ne prodaje, već se licencira.
//
//    
//    Prava, koja proizlaze iz licence
//
//    Ova KORISNIČKA LICENCA vam daje slijedeća prava:
//                
//    Pravo instalacije i upotrebe
//
//    KORISNIK ima pravo INSTALIRATI RAČUNALNI PROGRAM na proizvoljnom broju računala, s time da RAČUNALNI PROGRAM može istovremeno UPOTREBLJAVATI onoliko KORISNIKA, koliko imate pridobivenih licenci.
//    Korisnik nema pravo prijenosa prava iz i u svezi ovog ugovora na treće osobe, kao što nema pravo odustati ili prenijeti taj ugovor, djelomično ili u cijelosti, na treće osobe, ili im ustupiti pravo korištenja predmeta licence (podlicenca).
//
//    Pravo na podršku
//
//    Kao korisnik imate pravo na podršku, koju vrši sam VLASNIK ili preko ovlaštenih osoba. Za podršku, VLASNIK ili ovlaštena osoba imaju pravo na povrat troškova nastalih pružanjem iste, a visina kojih je određena važećim cjenikom.
//    Podatke, koje VLASNIK ili ovlaštena osoba prime u okviru podrške, VLASNIK može upotrebljavati za svoje poslovne svrhe, vezano na podršku, dijagnostiku ili daljnji razvoj. VLASNIK ili ovlaštena osoba neće upotrebljavati te podatke na način, koji bi identificirao korisnika.
//
//    Pravo na otklanjanje GREŠAKA
//
//    GREŠKA u programskom kodu je samo ono ponašanje RAČUNALNOM PROGRAMU, koje je u suprotnosti s načinom djelovanja, opisanim u uputstvima za upotrebu
//    U slučaju otkrića GREŠKE u RAČUNALNOM PROGRAMU, VLASNIK ju je dužan otkloniti.
//    Otklanjanje grešaka je uređeno AUTOMATSKIM OSVJEŽAVANJEM.
//    U slučaju da VLASNIK ne otkloni GREŠKU i ako ista u znatnoj mjeri utječe na funkcionalnost SOFTWARE-a, KORISNIK može zahtijevati raskid UGOVORA i plaćanje ODŠTETE.
//
//    
//    Dodatne odredbe
//
//    Osvježavanje
//
//    OSVJEŽAVANJE je zamjena (nadogradnja) starih verzija izvršnih datoteka, eventualnih podataka, te eventualnog izvornog koda SOFTWARE-a s OSVJEŽENIM VERZIJAMA, koje nadomještaju ili dopunjavaju licencirani PROGRAMSKI PAKET i za njih pridobivene licence su u skladu s odredbama VLASNIKA.
//
//    Autorska prava
//
//    Sva autorska prava pripadaju VLASNIKU.
//    Zbog toga, korisnik se prema RAČUNALNOM PROGRAMU mora odnositi kao prema svakom drugom autorskim pravima zaštićenom materijalu, s jedinom iznimkom, da može instalirati i/ili upotrebljavati RAČUNALNO PROGRAM na onoliko računala, koliko ima pridobivenih licenci KORISNIK ne smije kopirati tiskanu dokumentaciju, koja prati ili je dio RAČUNALNOG PROGRAMA U slučaju da treća osoba prisvaja bilo kakva autorska prava nad RAČUNALNOG PROGRAMA, odnosno KORISNIKU onemogućava mirno korištenje licence, KORISNIK o tome mora neodgodivo obavijestiti VLASNIKA i zahtijevati od njega da mu u primjerenom roku omogući mirno korištenje licence. To pravo se ukida nakon jedne godine od dana kada je saznao za prava treće osobe.
//
//    
//    Ograničena garancija
//
//    VLASNIK jamči da:
//
//    RAČUNALNI PROGRAM djeluje u okviru specifikacija i namjene programa, na način koji je sa strane VLASNIKA opisan u uputstvima za upotrebu, U slučaju otkrića GREŠKE, računa se da je VLASNIK omogućio njeno otklanjanje samim omogućavanjem besplatnog osvježavanja
//
//    Ograničenje i isključenje odgovornosti, NAKNADA ŠTETE
//    VLASNIKOVA cjelokupna odgovornost i korisnikovo jedino pravo na NAKNADU ŠTETE je da u slučaju iz »Ograničene garancije« po prosudbi VLASNIKA:
//
//    VLASNIK ne može popraviti RAČUNALNI PROGRAM nakon što ju je KORISNIK reklamirao VLASNIKU
//    Odštetni zahtjev nema osnove ako je do greške, koja je dovela do uvažavanja »Ograničene garancije« došlo zbog nesreće, zloupotrebe, pogrešne upotrebe ili više sile, na što VLASNIK nije imao utjecaja.
//
//    Bez drugih garancija
//
//    VLASNIK, sukladno odredbama Zakona, korisniku i/ili trećim osobama ne odgovara i ne daje nikakve druge garancije, bilo izražene ili zadane, uključno, a ne ograničeno s garancijom o upotrebi i/ili primjerenosti za određenu namjenu RAČUNALNI PROGRAM, odnosno njegovog dijela ili modula.
//
//    Bez odgovornosti za štetu
//
//    U svakom slučaju, VLASNIK i njegovi dobavljači, te su-ugovorne strane, sukladno odredbama Zakona, isključuju svaku odgovornost za štetu (uključno, a ne ograničeno s nastalom poslovnom štetom, gubitkom dobiti, prekidom poslovanja, gubitkom poslovnih podataka i slično) nastalu s ili iz upotrebe RAČUNALNOG PROGRAMA, te za bilo kakvu drugu poslovnu, neposlovnu, neposrednu ili posrednu imovinsku ili neimovinsku štetu, koja može nastati korisniku i/ili trećim osobama.
//
//    Nadležnost
//
//    U slučaju spora u vezi s pravima iz ove KORISNIČKE LICENCE, nadležan je trgovački sud u Rijeci.
//    "));

//            return sb.ToString();


//        }



        public static string RenderCentralBanner()
        {

            GallerySql gallery = new GallerySql();

            StringBuilder sb = new StringBuilder();

            //ako ne ucitava skriptu onda neka prikaze prvi banner
//            sb.AppendLine(string.Format(@"
//                        <div id=""centralBanner_1"">
//                            <img src=""images/ApartmentsElvira_1.jpg"" align=""middle"" width=""100%"" height=""auto"">
//                        </div>"));

         //   int numberOfBanners = 5;

            //  string[] linksUrlCollection = links.LinkUrlCollection.ToArray();

            //if (links.LinkCodeCollection.Count > 0)
            //{
         //   string[] centralBannersCollection = gallery.ImageCollection.ToArray();
            //    string[] linksCodeCollection = links.GetLinksByLinkPosition(position).LinkTitleCollection.ToArray();
       
            string[] centralBannersCollection = gallery.GetVisibleGallery(true).ImageCollection.ToArray();

            if (gallery.ImageCollection.Count > 0)
            {
               // string linkUrl = links.LinkUrlCollection[i].ToString();
                sb.AppendLine(string.Format(@"<div class=""divCentralBanner"">"));
                for (int i = 0; i < gallery.ImageCollection.Count; i++)
                {
                    string image = gallery.ImageCollection[i].ToString();
                    sb.AppendLine(string.Format(@"
                        <div id=""centralBanner_{0}"" hidden=""hidden"">
                            <img class=""centralBanner shadow"" src=""Gallery/{1}"" align=""middle"">
                        </div>"
                         , i
                         , image));
                }
                sb.AppendLine("</div>");
                sb.AppendLine("<hr/>");
//                sb.AppendLine(string.Format(@"
//                        <div class=""buttonLine"">
//                            <img id=""previousImage"" src=""images/left.png"" align=""middle"" width=""40px"" height=""40px"">
//                            <img  id=""nextImage"" src=""images/right.png"" align=""middle"" width=""40px"" height=""40px"">
//                        </div>"));
            }


            return sb.ToString();

        }



//        public static string OldRenderCentralBanner()
//        {

          

//            StringBuilder sb = new StringBuilder();

//            //ako ne ucitava skriptu onda neka prikaze prvi banner
//            sb.AppendLine(string.Format(@"
//                        <div id=""centralBanner_1"">
//                            <img src=""images/ApartmentsElvira_1.jpg"" align=""middle"" width=""100%"" height=""auto"">
//                        </div>"));

//            int numberOfBanners = 5;
//            for (int i = 2; i <= numberOfBanners; i++)
//            {
//                sb.AppendLine(string.Format(@"
//                        <div id=""centralBanner_{0}"" hidden=""hidden"">
//                            <img src=""{1}{0}.jpg"" align=""middle"" width=""100%"" height=""auto"">
//                        </div>"
//                     , i
//                     , "images/ApartmentsElvira_"));
//            }

//            sb.AppendLine(string.Format(@"
//                        <div class=""buttonLine"">
//                            <img id=""previousImage"" src=""images/left.png"" align=""middle"" width=""40px"" height=""40px"">
//                            <img  id=""nextImage"" src=""images/right.png"" align=""middle"" width=""40px"" height=""40px"">
//                        </div>"));


//            return sb.ToString();

//        }


        public static string RenderCalndar(String language)
        {
            StringBuilder sb = new StringBuilder();
            Translations translations = new Translations();

            sb.AppendLine(string.Format(@"
                                 <b>{0}</b>
                                <hr/>
    <div style=""padding: 10px 0px 10px 0px"">
         <table style=""text-align: right"">
         <tr style=""border-collapse:separate"">
         <td style=""width: 150px; padding-right: 5px"">{1}:</td>
         <td style=""background-color:{4}; width: 50px; border: 2px solid black; margin:10px""></td>
         </tr>
         <tr>
         <td style=""width: 150px; padding-right: 5px"">{2}:</td>
         <td style=""background-color:{5}; width: 50px; width: 50px; border: 2px solid black; margin:10px""""></td>
         </tr>
         <tr>
         <td style=""width: 150px; padding-right: 5px"">{3}:</td>
         <td style=""background-color:{6}; width: 50px; width: 50px; border: 2px solid black; margin:10px""""></td>
         </tr>
         </table>
     </div>"
                , translations.SelectTranslation("BookingCalendar", language).Result
                , translations.SelectTranslation("Arrival", language).Result
                , translations.SelectTranslation("Reserved", language).Result
                , translations.SelectTranslation("Free", language).Result
                , "#20B2AA"
                , "#87CEFA"
                , "#FFFFFF"));

            return sb.ToString();

        }



        public static string RenderLocation(String lang)
        {
            StringBuilder sb = new StringBuilder();
            ApplicationSettings applicationSettings = new ApplicationSettings();
            Translations translations = new Translations();
         
            //Int32 language = 3;
            //if (lang == "hr") { language = 2; }

            sb.AppendLine(string.Format(@"
                            <div><h4>{0}:</h4><hr>
                             {1}</br>
                             {2}</br>
                             {3} {4}</br>
                             {5}<hr>
                            </div>"
                , translations.SelectTranslation("Address", lang).Result
                , applicationSettings.Name
                , applicationSettings.Address
                , applicationSettings.PostalCode
                , applicationSettings.City
                , applicationSettings.Country));

            return sb.ToString();

        }

        public static string RenderContact(String lang)
        {
            StringBuilder sb = new StringBuilder();
            ApplicationSettings applicationSettings = new ApplicationSettings();
            Translations translations = new Translations();

            sb.AppendLine(string.Format(@"
                    <div class=""boxShadow"">
                        <p>{1}</p>
                        <p>{2}</p>
                        <p>{3} {4}</p>
                        <p>{5}</p>
                        <hr>
                        <p>{6}: {7}</p>
                        <p>{8}: {9}</p>
                        <p>{10}: <a href=""mailto:{11}?subject=Upit"">{11}</a></p>
                        <p>{12}: <a href=""{13}"">{14}</a></p>
                    </div>"
                , translations.SelectTranslation("Contact", lang).Result
                , applicationSettings.Name
                , applicationSettings.Address
                , applicationSettings.PostalCode
                , applicationSettings.City
                , applicationSettings.Country
                , "Tel"
                , applicationSettings.Tel
                , "GSM" 
                , applicationSettings.GSM
                , "E-mail"
                , applicationSettings.MyEmail
                , "Web"
                , applicationSettings.SiteURL
                , applicationSettings.Site));

            return sb.ToString();

        }


        public static string RenderBooking(string lang)
        {
            StringBuilder sb = new StringBuilder();
            ApplicationSettings applicationSettings = new ApplicationSettings();
            Translations translations = new Translations();
         
            sb.AppendLine(string.Format(@"
                        <p>{0}</p>"
                , translations.SelectTranslation("BookingDescription", lang).Result));

            return sb.ToString();
        }


        public static string RenderAccommodation(Int32 language)
        {
            StringBuilder sb = new StringBuilder();
//            Translations translations = new Translations();

//            //Apartment 1
//            sb.AppendLine(string.Format(@"
//                            <h4>{0}</h4>
//                            <hr/>
//                    <table>
//                        <tr>
//                            <td class=""alignLeft"" style=""width:200px"">
//                                <img src=""{13}"" align=""middle"" width=""35px"" height=""auto""> {1}
//                            </td>
//                            <td class=""alignLeft"">{2}
//                            </td>
//                        </tr>
//                        <tr>
//                            <td class=""alignLeft"" style=""width:200px"">
//                                <img src=""{14}"" align=""middle"" width=""35px"" height=""auto""> {3}
//                            </td>
//                            <td class=""alignLeft"">{4}
//                            </td>
//                        </tr>
//                        <tr>
//                            <td class=""alignLeft"" style=""width:200px"">
//                                <img src=""{15}"" align=""middle"" width=""35px"" height=""auto""> {5}
//                            </td>
//                            <td class=""alignLeft""><img src=""{6}"" align=""middle"" width=""auto"" height=""auto"">
//                            </td>
//                        </tr>
//                        <tr>
//                            <td class=""alignLeft"" style=""width:200px"">
//                                <img src=""{16}"" align=""middle"" width=""35px"" height=""auto""> {7}
//                            </td>
//                            <td class=""alignLeft""><img src=""{8}"" align=""middle"" width=""auto"" height=""auto"">
//                            </td>
//                        </tr>
//                        <tr>
//                            <td class=""alignLeft"" style=""width:200px"">
//                                <img src=""{17}"" align=""middle"" width=""35px"" height=""auto""> {9}
//                            </td>
//                            <td class=""alignLeft""><img src=""{10}"" align=""middle"" width=""auto"" height=""auto"">
//                            </td>
//                        </tr>
//                        <tr>
//                            <td class=""alignLeft"" style=""width:200px"">
//                                <img src=""{18}"" align=""middle"" width=""35px"" height=""auto""> {11}
//                            </td>
//                            <td class=""alignLeft""><img src=""{12}"" align=""middle"" width=""auto"" height=""auto"">
//                            </td>
//                        </tr>
//                    </table>
//                        <hr/>"
//                , translations.SelectTranslation("Apartment1", language).Result
//                , translations.SelectTranslation("Floor", language).Result
//                , translations.SelectTranslation("First", language).Result
//                , translations.SelectTranslation("NumberOfBeds", language).Result
//                , "4 + 1"
//                , translations.SelectTranslation("Seaview", language).Result
//                , "images/accept.gif"
//                , translations.SelectTranslation("Balcony", language).Result
//                , "images/accept.gif"
//                , translations.SelectTranslation("WiFi", language).Result
//                , "images/accept.gif"
//                , translations.SelectTranslation("Airconditioning", language).Result
//                , "images/accept.gif"
//                , "images/big101.png"
//                , "images/sleeping.png"
//                , "images/beach5.png"
//                , "images/terrace.png"
//                , "images/wifi74.png"
//                , "images/minisplit.png"));


//            for (int i = 1; i < 6; i++)
//            {
//                sb.AppendLine(string.Format(@"
//                        <div class=""accommodationImages"">
//                            <img class=""shadow"" src=""images/Ap1_{0}.jpg"" align=""middle"" width=""80%"" height=""auto"">
//                        </div>"
//                    , i));
//            }


//            //Apartment 2
//            sb.AppendLine(string.Format(@"
//                            <h4>{0}</h4>
//                            <hr/>
//                    <table>
//                        <tr>
//                            <td class=""alignLeft"" style=""width:200px"">
//                                <img src=""{13}"" align=""middle"" width=""35px"" height=""auto""> {1}
//                            </td>
//                            <td class=""alignLeft"">{2}
//                            </td>
//                        </tr>
//                        <tr>
//                            <td class=""alignLeft"" style=""width:200px"">
//                                <img src=""{14}"" align=""middle"" width=""35px"" height=""auto""> {3}
//                            </td>
//                            <td class=""alignLeft"">{4}
//                            </td>
//                        </tr>
//                        <tr>
//                            <td class=""alignLeft"" style=""width:200px"">
//                                <img src=""{15}"" align=""middle"" width=""35px"" height=""auto""> {5}
//                            </td>
//                            <td class=""alignLeft""><img src=""{6}"" align=""middle"" width=""auto"" height=""auto"">
//                            </td>
//                        </tr>
//                        <tr>
//                            <td class=""alignLeft"" style=""width:200px"">
//                                <img src=""{16}"" align=""middle"" width=""35px"" height=""auto""> {7}
//                            </td>
//                            <td class=""alignLeft""><img src=""{8}"" align=""middle"" width=""auto"" height=""auto"">
//                            </td>
//                        </tr>
//                        <tr>
//                            <td class=""alignLeft"" style=""width:200px"">
//                                <img src=""{17}"" align=""middle"" width=""35px"" height=""auto""> {9}
//                            </td>
//                            <td class=""alignLeft""><img src=""{10}"" align=""middle"" width=""auto"" height=""auto"">
//                            </td>
//                        </tr>
//                        <tr>
//                            <td class=""alignLeft"" style=""width:200px"">
//                                <img src=""{18}"" align=""middle"" width=""35px"" height=""auto""> {11}
//                            </td>
//                            <td class=""alignLeft""><img src=""{12}"" align=""middle"" width=""auto"" height=""auto"">
//                            </td>
//                        </tr>
//                    </table>
//                        <hr/>"
//                , translations.SelectTranslation("Apartment2", language).Result
//                , translations.SelectTranslation("Floor", language).Result
//                , translations.SelectTranslation("First", language).Result
//                , translations.SelectTranslation("NumberOfBeds", language).Result
//                , 4
//                , translations.SelectTranslation("Seaview", language).Result
//                , "images/accept.gif"
//                , translations.SelectTranslation("Balcony", language).Result
//                , "images/accept.gif"
//                , translations.SelectTranslation("WiFi", language).Result
//                , "images/accept.gif"
//                , translations.SelectTranslation("Airconditioning", language).Result
//                , "images/accept.gif"
//                , "images/big101.png"
//                , "images/sleeping.png"
//                , "images/beach5.png"
//                , "images/terrace.png"
//                , "images/wifi74.png"
//                , "images/minisplit.png"));


//            for (int i = 1; i < 7; i++)
//            {
//                sb.AppendLine(string.Format(@"
//                        <div class=""accommodationImages"">
//                            <img class=""shadow"" src=""images/Ap2_{0}.jpg"" align=""middle"" width=""80%"" height=""auto"">
//                        </div>"
//                    , i));
//            }


//            //Apartment 3
//            sb.AppendLine(string.Format(@"
//                            <h4>{0}</h4>
//                            <hr/>
//                    <table>
//                        <tr>
//                            <td class=""alignLeft"" style=""width:200px"">
//                                <img src=""{13}"" align=""middle"" width=""35px"" height=""auto""> {1}
//                            </td>
//                            <td class=""alignLeft"">{2}
//                            </td>
//                        </tr>
//                        <tr>
//                            <td class=""alignLeft"" style=""width:200px"">
//                                <img src=""{14}"" align=""middle"" width=""35px"" height=""auto""> {3}
//                            </td>
//                            <td class=""alignLeft"">{4}
//                            </td>
//                        </tr>
//                        <tr>
//                            <td class=""alignLeft"" style=""width:200px"">
//                                <img src=""{15}"" align=""middle"" width=""35px"" height=""auto""> {5}
//                            </td>
//                            <td class=""alignLeft""><img src=""{6}"" align=""middle"" width=""auto"" height=""auto"">
//                            </td>
//                        </tr>
//                        <tr>
//                            <td class=""alignLeft"" style=""width:200px"">
//                                <img src=""{16}"" align=""middle"" width=""35px"" height=""auto""> {7}
//                            </td>
//                            <td class=""alignLeft""><img src=""{8}"" align=""middle"" width=""auto"" height=""auto"">
//                            </td>
//                        </tr>
//                        <tr>
//                            <td class=""alignLeft"" style=""width:200px"">
//                                <img src=""{17}"" align=""middle"" width=""35px"" height=""auto""> {9}
//                            </td>
//                            <td class=""alignLeft""><img src=""{10}"" align=""middle"" width=""auto"" height=""auto"">
//                            </td>
//                        </tr>
//                    </table>
//                        <hr/>"
//                , translations.SelectTranslation("Apartment3", language).Result
//                , translations.SelectTranslation("Floor", language).Result
//                , translations.SelectTranslation("Ground", language).Result
//                , translations.SelectTranslation("NumberOfBeds", language).Result
//                , 4
//                , translations.SelectTranslation("Seaview", language).Result
//                , "images/accept.gif"
//                , translations.SelectTranslation("Balcony", language).Result
//                , "images/accept.gif"
//                , translations.SelectTranslation("WiFi", language).Result
//                , "images/accept.gif"
//                , translations.SelectTranslation("Airconditioning", language).Result
//                , "images/accept.gif"
//                , "images/big101.png"
//                , "images/sleeping.png"
//                , "images/beach5.png"
//                , "images/terrace.png"
//                , "images/wifi74.png"));


//            for (int i = 1; i < 4; i++)
//            {
//                sb.AppendLine(string.Format(@"
//                        <div class=""accommodationImages"">
//                            <img class=""shadow"" src=""images/Ap3_{0}.jpg"" align=""middle"" width=""80%"" height=""auto"">
//                        </div>"
//                    , i));
//            }

            return sb.ToString();
        }

       
    }

}