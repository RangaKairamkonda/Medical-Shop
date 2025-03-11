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
    public partial class Login : System.Web.UI.Page
    {
        string Connectionstring = ConfigurationManager.ConnectionStrings["Connection"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            using(SqlConnection loginconnection = new SqlConnection(Connectionstring))
            {
                try
                {
                    loginconnection.Open();
                    // string loginproc = "Proc_login";
                    string loginproc = "Proc_logins";

                    using (SqlCommand logincommand = new SqlCommand(loginproc, loginconnection))
                    {
                        logincommand.Parameters.AddWithValue("@Username", txtusername.Text);
                        logincommand.Parameters.AddWithValue("@Password", txtpwd.Text);
                        logincommand.CommandType = CommandType.StoredProcedure;
                        var userid = logincommand.ExecuteScalar();
                        if (userid !=null)
                        {
                            Session["ID"] = userid;
                            Session["Username"] = txtusername.Text;
                            Response.Redirect("Welcome.aspx");
                        }
                        else
                        {
                            Response.Redirect("Login.aspx");
                        }
                    }

                }
                catch(Exception ex) 
                {
                    Console.WriteLine(ex.Message);
                }
                finally
                {
                    loginconnection.Close();    
                }
            }

        }
    }
}