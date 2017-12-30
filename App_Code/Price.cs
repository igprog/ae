using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using Newtonsoft.Json;

/// <summary>
/// Price
/// </summary>
[WebService(Namespace = "http://apartmentselvira.com/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
[System.Web.Script.Services.ScriptService]
public class Price : System.Web.Services.WebService {

    public Price() {

    }

    public class NewPrice {
        public string dateFrom { get; set; }
        public string dateTo { get; set; }
        public int apartment { get; set; }
        public int days { get; set; }
        public double total { get; set; }
        public double deposit { get; set; }
        public double restToPay { get; set; }
    }

    [WebMethod]
    public string Init() {
        NewPrice x = new NewPrice();
        x.dateFrom = "2018-07-01";
        x.dateTo = "2018-07-01";
        x.apartment = 1;
        x.days = 0;
        x.total = 0;
        x.deposit = 0;
        x.restToPay = 0;
        return JsonConvert.SerializeObject(x, Formatting.Indented);
    }

     [WebMethod]
    public string GetPrice(NewPrice d) {
        try {
            NewPrice x = new NewPrice();
            x.dateFrom = d.dateFrom;
            x.dateTo = d.dateTo;
            x.apartment = d.apartment;
            x.days = Convert.ToInt32((Convert.ToDateTime(d.dateTo) - Convert.ToDateTime(d.dateFrom)).TotalDays);
            for (int i = Convert.ToDateTime(x.dateFrom).DayOfYear; i < Convert.ToDateTime(x.dateTo).DayOfYear; i++) {
                if(i >= 182 && i <= 243) {
                    x.total += 80 + (d.apartment == 3 ? 0 : 10);
                } else {
                    x.total += 50 + (d.apartment == 3 ? 0 : 10);
                }
            }
            x.deposit = Math.Round((x.total * 0.1),0);
            x.restToPay = x.total - x.deposit;
            return JsonConvert.SerializeObject(x, Formatting.Indented);
        } catch(Exception e) {
            return (JsonConvert.SerializeObject(e.Message, Formatting.Indented));
        }
    }

}
