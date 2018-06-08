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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var Liste = new List<PlzOrt>();
            if (Cache["plzort"] == null)
            {
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
                Cache.Add("plzort", Liste,
                    new System.Web.Caching.CacheDependency(datei),
                    DateTime.MaxValue,
                    new TimeSpan(0, 10, 0),
                    System.Web.Caching.CacheItemPriority.Low, null);
                Label1.Text = "brand new";
            }
            else
            {
                Liste = (List <PlzOrt>) Cache["plzort"];
                Label1.Text = "from cache";
            }
        }
    }
}