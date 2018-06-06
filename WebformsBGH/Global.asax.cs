using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;
using WebformsBGH.Modul05;

namespace WebformsBGH
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Code, der beim Anwendungsstart ausgeführt wird
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
            Application.Add("anzahl", 0);


            var liste = new List<PlzOrt>();
            liste.Add(new PlzOrt() { Plz = 1234, Ort = "demorot" });
            liste.Add(new PlzOrt() { Plz = 3433, Ort = "Burghausne" });
            liste.Add(new PlzOrt() { Plz = 2323, Ort = "Braunau" });
            liste.Add(new PlzOrt() { Plz = 7734, Ort = "Graz" });
            Application.Add("plzort", liste);
        }
        void Application_End(object sender, EventArgs e)
        {
            



        }
        void Session_Start(object sender, EventArgs e)
        {
            Application["anzahl"]=Convert.ToInt32(Application["anzahl"])+1;
        }
        void Session_End(object sender, EventArgs e)
        {
            Application["anzahl"] = Convert.ToInt32(Application["anzahl"]) - 1;
        }
    }

   
}