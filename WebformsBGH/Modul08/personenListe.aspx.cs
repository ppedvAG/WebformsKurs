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
    public partial class personenListe : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var con = new SqlConnection(
                                ConfigurationManager.ConnectionStrings["WebformsDBConnectionString1"].ConnectionString);
                var cmd = new SqlCommand("select * from personen", con);
                var da = new SqlDataAdapter(cmd); //old style Datareader
                var dt = new DataTable();
                da.Fill(dt);
                con.Close();
                drpPersonen.DataSource = dt;
                drpPersonen.DataBind();
            }



        }

        protected void drpPersonen_SelectedIndexChanged(object sender, EventArgs e)
        {
            var con = new SqlConnection(
               ConfigurationManager.ConnectionStrings["WebformsDBConnectionString1"].ConnectionString);
            var cmd = new SqlCommand("select * from Todo where bearbeiter=@par", con);
            cmd.Parameters.AddWithValue("@par", drpPersonen.SelectedValue);
            var da = new SqlDataAdapter(cmd); //old style Datareader
            var dt = new DataTable();
            da.Fill(dt);
            con.Close();
            rptToDo.DataSource = dt;
            rptToDo.DataBind();
        }
    }
}