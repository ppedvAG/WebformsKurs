using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebformsBGH.Modul09
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public IEnumerable<WebformsBGH.Modul09.ToDo> rptToDo_GetData()
        {
            var ef = new DBModel();
          
            return ef.ToDo;
        }
    }
}