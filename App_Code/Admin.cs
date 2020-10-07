using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using Newtonsoft.Json;
using Igprog;

/// <summary>
/// Admin
/// </summary>
[WebService(Namespace = "https://apartmentselvira.com/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
[System.Web.Script.Services.ScriptService]
public class Admin : System.Web.Services.WebService {
    Global G = new Global();
    public Admin() {
    }

    public class NewAdmin {
        public string userName;
        public string password;
    }

    [WebMethod]
    public string Init() {
        NewAdmin x = new NewAdmin();
        x.userName = null;
        x.password = null;
        return JsonConvert.SerializeObject(x, Formatting.None);
    }

    [WebMethod]
    public bool Login(NewAdmin x) {
        return x.userName == G.adminUserName && x.password == G.adminPassword ? true : false;
    }

}
