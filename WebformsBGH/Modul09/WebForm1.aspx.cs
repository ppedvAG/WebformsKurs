using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebformsBGH.Modul09
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var liste = new List<MyToDo>();
            using (SqlConnection con = new SqlConnection(
              ConfigurationManager.ConnectionStrings["WebformsDBConnectionString1"].ConnectionString))
            {
                var cmd = new SqlCommand("select * from Todo ", con);
                con.Open();
                var rd = cmd.ExecuteReader();
         
                while (rd.Read())
                {
                    liste.Add(new MyToDo()
                    {
                        Id = (int)rd["Id"],
                        Aufgabe=rd["Aufgabe"].ToString(),
                        Erledigt=(bool) rd["Erledigt"]

                    }
                        );
                }
            }
            rptToDo.DataSource = liste;
            rptToDo.DataBind();

        }
    }
    public class MyToDo
    {
        public int Id { get; set; }
        public string Aufgabe { get; set; }
        public bool? Erledigt { get; set; }

    }
}