using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using WebformsBGH.Modul05;
using System.Web.Services;

namespace WebformsBGH.Modul15
{
    public partial class AutoCompleteOrt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        [WebMethod]
        public static List<PlzOrt> CompleteText(string Par)
        {
            
            var Liste = new List<PlzOrt>();
            var arr = File.ReadAllLines(HttpContext.Current.Server.MapPath(
                "~/app_data/plzort.csv"));
            foreach (var item in arr)
            {
                var f = item.Split(';');
                Liste.Add(new PlzOrt()
                {
                    Plz = Convert.ToInt32(f[0]),
                    Ort = f[1]
                });
            }
            var q = from o in Liste
                    where o.Ort.Contains(Par)
                    select o;
            return q.ToList();

        }
    }
}