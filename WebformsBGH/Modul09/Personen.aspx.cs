using Microsoft.AspNet.FriendlyUrls.ModelBinding;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebformsBGH.Modul09
{
    public partial class Personen1 : System.Web.UI.Page
    {
        DBModel ef = new DBModel();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // Der ID-Parameter sollte dem DataKeyNames-Wert entsprechen, der für das Steuerelement
        // festgelegt wurde, oder mit einem Wertanbieterattribut versehen werden, z. B. [QueryString]int id
        public WebformsBGH.Modul09.Personen FormView1_GetItem([FriendlyUrlSegments(0)] int id=1)
        {

            return ef.Personen.Find(id);
        }

        // Der Name des ID-Parameters sollte dem für das Steuerelement festgelegten DataKeyNames-Wert entsprechen.
        public void FormView1_UpdateItem(int id)
        {
            WebformsBGH.Modul09.Personen item = null;
            item = ef.Personen.Find(id);
            if (item == null)
            {
                // Das Element wurde nicht gefunden.
                ModelState.AddModelError("", String.Format("Das Element mit der ID {0} wurde nicht gefunden.", id));
                return;
            }
            TryUpdateModel(item);
            if (ModelState.IsValid)
            {
                if (item.Ort=="")
                {
                    item.Ort = "Burghausen";
                }
                 ef.SaveChanges();

            }
        }
    }
}