using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebformsBGH.Modul05
{
    public partial class orte : System.Web.UI.Page
    {
        public List<PlzOrt> Liste { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {

            Liste = (List<PlzOrt>)Application["plzort"];

        }
    }
}