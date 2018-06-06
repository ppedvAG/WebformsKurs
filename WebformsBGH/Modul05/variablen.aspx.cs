using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebformsBGH.Modul05
{
    
    public partial class variablen : System.Web.UI.Page
    {
        public string MyProperty { get; set; }


        int x = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            var I = 0;
            MyProperty = "Hallo Title";

        }
    }
}