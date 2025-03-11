using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Hotel_Management
{
    public partial class Register : System.Web.UI.Page
    {
        string Connectionstring = ConfigurationManager.ConnectionStrings["Connection"].ToString();  
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnregister_Click(object sender, EventArgs e)
        {
            using (SqlConnection regconnection = new SqlConnection(Connectionstring))
            {

                try
                {
                    regconnection.Open();
                    string regproc = "Proc_reg";
                    using (SqlCommand regcommand = new SqlCommand(regproc, regconnection))
                    {
                        regcommand.Parameters.AddWithValue("@Username", txtusername.Text);
                        regcommand.Parameters.AddWithValue("@Email", txtemail.Text);
                        regcommand.Parameters.AddWithValue("@Password", txtpwd.Text);
                        regcommand.CommandType = CommandType.StoredProcedure;
                       int i= regcommand.ExecuteNonQuery();
                        if(i==1)
                        {
                            Response.Redirect("Login.aspx");
                        }
                        else
                        {
                            Response.Redirect("Register.aspx");
                        }
                    }
                }

                catch (Exception ex)

                {
                    Console.WriteLine(ex.Message);
                }
                finally
                {
                    regconnection.Close();
                }
            }
        }
    }
}