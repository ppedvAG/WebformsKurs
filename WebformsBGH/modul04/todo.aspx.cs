using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebformsBGH.modul04
{
    public partial class todo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            
            File.AppendAllText(Server.MapPath("~/app_data/todo.txt"), 
                task.Text + System.Environment.NewLine);
            task.Text = "";
        }
    }
}