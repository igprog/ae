using System;
using System.Collections.Generic;
using System.Web.Services;
using Newtonsoft.Json;
using Igprog;

/// <summary>
/// Contact
/// </summary>
[WebService(Namespace = "https://apartmentselvira.com/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
[System.Web.Script.Services.ScriptService]
public class Contact : System.Web.Services.WebService {
    Global G = new Global();
    public Contact() {
    }

    public class NewContact {
        public string name;
        public string email;
        public string phone;
        public string subject;
        public string msg;
        public Mail.Response response;
    }

    [WebMethod]
    public string Init() {
        NewContact x = new NewContact();
        x.name = null;
        x.email = null;
        x.phone = null;
        x.subject = null;
        x.msg = null;
        x.response = new Mail.Response();
        x.response.isSent = false;
        x.response.msg = null;
        return JsonConvert.SerializeObject(x, Formatting.None);
    }

    [WebMethod]
    public string Send(NewContact x) {
        try {
            string subject = string.Format("Novi upit - {0}", x.subject);
            string body = string.Format(@"
<h3>Novi upit</h3>
<p>Ime: {0}</p>
<p>Email: {1}</p>
<p>{2}</p>
<p>Poruka: {3}</p>", x.name, x.email, x.subject, x.msg);
            Mail m = new Mail();
            x.response = m.SendMail(G.email, subject, body, true);
            return JsonConvert.SerializeObject(x, Formatting.None);
        } catch (Exception e) {
            x.response.isSent = false;
            x.response.msg = e.Message;
            x.response.msg1 = e.StackTrace;
            return JsonConvert.SerializeObject(x, Formatting.None);
        }
    }


}
