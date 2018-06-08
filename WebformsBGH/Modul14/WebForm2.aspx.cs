using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebformsBGH.Modul05;

namespace WebformsBGH.Modul14
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public IEnumerable<WebformsBGH.Modul05.PlzOrt> Repeater1_GetData()
        {
            var Liste = new List<PlzOrt>();
            var datei = Server.MapPath("~/app_data/plzort.csv");
            var arr = File.ReadAllLines(datei);
            foreach (var item in arr)
            {
                var f = item.Split(';');
                Liste.Add(new PlzOrt()
                {
                    Plz = Convert.ToInt32(f[0]),
                    Ort = f[1]
                });
            }
            var p = Request.QueryString["suche"];
            if (p!=null)
            {
                var q = from o in Liste
                        where o.Ort.Contains(p)
                        select o;
                return q.ToList();
            }
            return Liste;
        }
    }
}