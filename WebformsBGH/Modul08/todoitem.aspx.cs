using Microsoft.AspNet.FriendlyUrls;
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
    public partial class todoitem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {   FormView1.DefaultMode = FormViewMode.Edit;
            using (SqlConnection con = new SqlConnection(
            ConfigurationManager.ConnectionStrings["WebformsDBConnectionString1"].ConnectionString))
            {

                var cmd = new SqlCommand("select * from Todo where Id=@Par", con);
                cmd.Parameters.AddWithValue("@Par",
                    Request.GetFriendlyUrlSegments()[0]);
                var da = new SqlDataAdapter(cmd);
                var dt = new DataTable();
                con.Open();
                da.Fill(dt);

                FormView1.DataSource = dt;
            }
            FormView1.DataBind();
         
        }
    }
}