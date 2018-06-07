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
    public partial class ToDoModelBinding : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public IEnumerable<mbToDo> rptToDo_GetData()
        {
            var liste = new List<mbToDo>();
            using (SqlConnection con = new SqlConnection(
              ConfigurationManager.ConnectionStrings["WebformsDBConnectionString1"].ConnectionString))
            {
                var cmd = new SqlCommand("select * from Todo ", con);
                con.Open();
                var rd = cmd.ExecuteReader();
                while (rd.Read())
                {
                    liste.Add(new mbToDo()
                    {
                        Id = (int)rd["Id"],
                        Aufgabe = rd["Aufgabe"].ToString(),
                        Erledigt = (bool)rd["Erledigt"]
                    }
                        );
                }
            }
            return liste;
        }

        protected void rptToDo_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName=="DO")
            {
               
            }
        }
    }
    public class mbToDo
    {
        public int Id { get; set; }
        public string Aufgabe { get; set; }
        public bool? Erledigt { get; set; }

    }
}