using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using Microsoft.Ajax.Utilities;

namespace Hotel_Management
{
    public partial class SearchProduct : System.Web.UI.Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["Connection"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            using(SqlConnection searchconnection = new SqlConnection(connectionString))
            {
                searchconnection.Open();
                string SearchProc ="Proc_Search";
                using(SqlCommand command = new SqlCommand(SearchProc,searchconnection))
                {
                    command.Parameters.AddWithValue("@MedicineName",txtproductname.Text);
                    command.CommandType=CommandType.StoredProcedure;
                     SqlDataReader reader = command.ExecuteReader();
                    if(reader.HasRows)
                    {
                        while(reader.Read())
                        {
                            txtCost.Text = reader["Cost"].ToString();
                            TxtQunatity.Text = reader["Quantity"].ToString();
                        }
                    }

                }
            }
           
        }

        protected void txtproductname_TextChanged(object sender, EventArgs e)
        {
            txtCost.Text=string.Empty;
            TxtQunatity.Text=string.Empty;
        }
    }
}