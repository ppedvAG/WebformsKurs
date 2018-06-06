using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebformsBGH.Modul07
{
    public partial class WebUserControl1 : System.Web.UI.UserControl
    {
       // public string Text { get; set; }
        private string text;

        public string Text
        {
            get {
                text = suche.Text;
                return text; }
            set { text = value;
                suche.Text = value;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}