﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebformsBGH.Modul11
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Trace.Write("pageload");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Trace.Warn("Button 1");
        }
    }
}