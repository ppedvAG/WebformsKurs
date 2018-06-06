using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebformsBGH.Modul04
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // var txt= Request.Form["txt"];
            var id=Request.QueryString["id"];
        
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            //Response.Redirect("neueseite");
            using (StreamWriter sw = File.AppendText(
                Server.MapPath("/app_data/log.txt")))
            {
                sw.WriteLine(DateTime.Now);
            }
            File.WriteAllText(Server.MapPath("/app_data/log.txt"), DateTime.Now.ToString());
            
        }
    }
}