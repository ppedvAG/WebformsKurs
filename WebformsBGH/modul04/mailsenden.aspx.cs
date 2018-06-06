using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;

using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebformsBGH.modul04
{
    public partial class mailsenden : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var mail = new SmtpClient();
            mail.Send("asp@ppedv.de", "hannesp@ppedv.de", "Betreff", "Text");

        }
    }
}