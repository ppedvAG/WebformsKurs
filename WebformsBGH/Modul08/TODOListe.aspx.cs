using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebformsBGH.Modul08
{
    public partial class TODOListe : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            using (SqlConnection con = new SqlConnection(
               ConfigurationManager.ConnectionStrings["WebformsDBConnectionString1"].ConnectionString))
            {
                var cmd = new SqlCommand("select * from Todo ", con);
                var da = new SqlDataAdapter(cmd);
                var dt = new DataTable();
                con.Open();
                da.Fill(dt);

                rptToDo.DataSource = dt;
            }
            rptToDo.DataBind();
        }
    }
}