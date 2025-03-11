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
    public partial class GetAllDetails : System.Web.UI.Page
    {
        string Connectionstring = ConfigurationManager.ConnectionStrings["Connection"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetGrid();
            }
        }
        public void GetGrid()
        {
            using (SqlConnection connection = new SqlConnection(Connectionstring))
            {
                connection.Open();
                string getgrid = "Proc_Get";
                using (SqlCommand command = new SqlCommand(getgrid, connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    SqlDataAdapter adapter = new SqlDataAdapter(command);
                    DataSet dataSet = new DataSet();
                    adapter.Fill(dataSet);
                    GridView1.DataSource = dataSet;
                    GridView1.DataBind();
                    connection.Close();
                }
            }
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.RowIndex];
            Control c1 = row.FindControl("Label1");
            Label l1 = (Label)c1;
            using (SqlConnection rowdelconnection = new SqlConnection(Connectionstring))
            {
                try
                {
                    rowdelconnection.Open();
                    string proc = "Proc_Del";
                    using (SqlCommand rowdelcommand = new SqlCommand(proc, rowdelconnection))
                    {
                        rowdelcommand.Parameters.AddWithValue("@MId", l1.Text);
                        rowdelcommand.CommandType = CommandType.StoredProcedure;
                        rowdelcommand.ExecuteNonQuery();
                    }
                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.Message);
                }
                finally
                {
                    rowdelconnection.Close();
                }

            }
            GetGrid();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            GetGrid();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.RowIndex];
            Control c1 = row.FindControl("TextBox1");
            TextBox t1 = (TextBox)c1;
            Control c2 = row.FindControl("TextBox2");
            TextBox t2 = (TextBox)c2;
            Control c3 = row.FindControl("TextBox3");
            TextBox t3 = (TextBox)c3;
            Control c4 = row.FindControl("TextBox4");
            TextBox t4 = (TextBox)c4;

            using (SqlConnection updateconnection = new SqlConnection(Connectionstring))
            {
                updateconnection.Open();
                string updateproc ="Proc_update";
                using (SqlCommand updatecommand = new SqlCommand(updateproc,updateconnection))
                {
                    updatecommand.Parameters.AddWithValue("@MId", t1.Text);
                    updatecommand.Parameters.AddWithValue("@MedicineName", t2.Text);
                    updatecommand.Parameters.AddWithValue("@Quantity", t3.Text);
                    updatecommand.Parameters.AddWithValue("@Cost", t4.Text);
                    updatecommand.CommandType = CommandType.StoredProcedure;
                    updatecommand.ExecuteNonQuery();
                    updateconnection.Close();
                    GridView1.EditIndex = -1;
                    GetGrid();
                }
            }

        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            GetGrid();
        }
    }
}