using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebformsBGH.modul04
{
    public partial class fileUpload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                var id = Guid.NewGuid().ToString();

                FileUpload1.PostedFile.SaveAs(
                    Server.MapPath("~/upload/" +
                     id+ ".png"));
                Label1.Text = "die Datei " + FileUpload1.PostedFile.FileName
                    + "wurde unter" + id + " gespeichert";
                Image1.ImageUrl = "/upload/" + id + ".png";
            }
        }
    }
}