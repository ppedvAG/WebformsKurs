using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebformsBGH.Modul16
{
    public partial class Bilder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public IEnumerable<string> Repeater1_GetData()
        {
            var files = Directory.GetFiles(Server.MapPath("~/Modul16/bilder"));
            string[] dateien = new string[files.Length];
            for (int i = 0; i < files.Length; i++)
            {
               
                dateien[i]=   Path.GetFileNameWithoutExtension(files[i]);
            } 
           
         

            return dateien;
        }
    }
}