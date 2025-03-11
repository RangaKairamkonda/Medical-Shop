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
    public partial class AddnewStock : System.Web.UI.Page
    {
        string Connectionstring= ConfigurationManager.ConnectionStrings["Connection"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                GetGridview();
            }
        }

        protected void btnaddstock_Click(object sender, EventArgs e)
        {
            using (SqlConnection addconnection = new SqlConnection(Connectionstring))
            {
                try
                {
                    addconnection.Open();
                    string addstcockproc = "Proc_AddStocks";
                    using(SqlCommand addcommand = new SqlCommand(addstcockproc,addconnection))
                    {
                        addcommand.Parameters.AddWithValue("@MedicineName", txtmedicinename.Text);
                        addcommand.Parameters.AddWithValue("@Quantity", txtquantity.Text);
                        addcommand.Parameters.AddWithValue("@Cost",txtCost.Text);
                        addcommand.Parameters.AddWithValue("@UId", Session["ID"].ToString());
                        addcommand.CommandType = CommandType.StoredProcedure;
                        addcommand.ExecuteNonQuery();
                    }

                }
                catch(Exception ex)
                { 
                    Console.WriteLine(ex.Message);   
                }
                finally
                {
                    addconnection.Close();
                }
            }
            GetGridview();
        }

        public void GetGridview()
        {
            using(SqlConnection gridconnection = new SqlConnection(Connectionstring))
            {
                try
                {
                    gridconnection.Open();
                    string getgridproc = "Proc_GetData";
                    using (SqlCommand getgridcommand = new SqlCommand(getgridproc, gridconnection))
                    {
                        getgridcommand.Parameters.AddWithValue("@UId", Session["ID"].ToString());
                        getgridcommand.CommandType=CommandType.StoredProcedure;
                        SqlDataAdapter dataadapter = new SqlDataAdapter(getgridcommand);
                        DataSet ds = new DataSet();
                        dataadapter.Fill(ds);
                        GridView1.DataSource = ds;
                        GridView1.DataBind();
                    }
                }
                catch(Exception ex)
                {
                    Console.WriteLine(ex.Message);
                }
                finally
                {
                    gridconnection.Close();
                }
            }
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.RowIndex];
            Control c1 = row.FindControl("Label1");
            Label l1 = (Label)c1;
            using(SqlConnection connection = new SqlConnection(Connectionstring))
            {
                connection.Open();
                string prodel = "";
                using (SqlCommand getgridcommand = new SqlCommand(prodel,connection))
                {
                    getgridcommand.Parameters.AddWithValue("@UID", Session["ID"].ToString());
                    getgridcommand.CommandType= CommandType.StoredProcedure;
                    getgridcommand.ExecuteNonQuery();
                    connection.Close();
                    GetGridview();
                }
               
            }
        }
    }
}