using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace RovilTradingV1._2
{
    public partial class Upload : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        SqlCommand command = new SqlCommand();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                display();
            }
            ListView();

            
            SessionLbl.Text = Session["UserName"].ToString();
        }

        protected void UploadBtn_Click(object sender, EventArgs e)
        {
            try
            {
                con.ConnectionString = ConfigurationManager.ConnectionStrings["RovilConnectionString"].ToString();
                SqlCommand com = new SqlCommand();

                // get image path
                string str = FileUpload1.FileName;
                FileUpload1.PostedFile.SaveAs(Server.MapPath(".") + "//Images//" + str);
                string path = "~//Images//" + str.ToString();


                con.Open();
                com.CommandText = "Insert into ItemsTbl values('" + DDL1.SelectedItem.ToString() + "','" + ItemDescriptionTxb.Text + "','" + PriceTxb.Text + "','" + path + "')";
                com.Connection = con;
                com.ExecuteNonQuery();
                con.Close();
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "<script> alert('saved')</script>");
                display();
            }
            catch (Exception ex)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", "<script> alert('" + ex.GetType().ToString() + "')</script>");
            }

        }

        //methods


        protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            //if (e.Row.RowType == DataControlRowType.DataRow && e.Row.RowIndex != GridView1.EditIndex)
            //{
            //    (e.Row.Cells[3].Controls[3] as LinkButton).Attributes["onclick"] = "return confirm('Do you want to delete this row?');";
            //}
        }

        // display method
        private void display()
        {
            con.ConnectionString = ConfigurationManager.ConnectionStrings["RovilConnectionString"].ToString();
            sda = new SqlDataAdapter("select * from ItemsTbl", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            GridView1.DataSource = dt;
            DataBind();
        }

        // list view populayte method
        private void ListView()
        {
            if (!this.IsPostBack)
            {
                con.ConnectionString = ConfigurationManager.ConnectionStrings["RovilConnectionString"].ToString();
                sda = new SqlDataAdapter("select * from ItemTypeTbl", con);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                DDL1.DataSource = dt;
                DDL1.DataTextField = "ItemTypeId";
                DDL1.DataTextField = "ItemTypeName";
                DataBind();
                DDL1.Items.Insert(0, new ListItem("--- Select Item ---", "0"));

            }
        }

        protected void Insert(object sender, EventArgs e)
        {
            string ItemName = this.DDL1.SelectedItem.Text;
            string ItemDescription = ItemDescriptionTxb.Text;
            string ItemPrice = PriceTxb.Text;
            string constr = ConfigurationManager.ConnectionStrings["RovilConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("Procedure1"))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Action", "INSERT");
                    cmd.Parameters.AddWithValue("@ItemName", ItemName);
                    cmd.Parameters.AddWithValue("@ItemDescription", ItemDescription);
                    cmd.Parameters.AddWithValue("@ItemPrice", ItemPrice);
                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
            this.display();
        }

        protected void OnRowEditing(object sender, GridViewEditEventArgs e)
        {
            try
            {
                GridView1.EditIndex = e.NewEditIndex;
                this.display();
            }

            catch (Exception ex)
            {

            }

        }


        protected void OnRowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.RowIndex];
            int Id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
            string ItemName = (row.FindControl("ItemName") as TextBox).Text;
            string ItemDescription = (row.FindControl("ItemDescription") as TextBox).Text;
            string ItemPrice = (row.FindControl("ItemPrice") as TextBox).Text;
            string constr = ConfigurationManager.ConnectionStrings["RovilConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("Procedure1"))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Action", "UPDATE");
                    cmd.Parameters.AddWithValue("@Id", Id);
                    cmd.Parameters.AddWithValue("@ItemName", ItemName.ToString());
                    cmd.Parameters.AddWithValue("@ItemDescription", ItemDescription.ToString());
                    cmd.Parameters.AddWithValue("@ItemPrice", ItemPrice.ToString());
                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
            GridView1.EditIndex = -1;
            this.display();

        }

        protected void OnRowCancelingEdit(object sender, EventArgs e)
        {
            try
            {
                GridView1.EditIndex = -1;
                this.display();
            }
            catch (Exception ex)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "<Script>", "<scripts> alert('" + ex.GetType().ToString() + "') </script>");
            }
        }

        protected void OnRowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                int Id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);
                string constr = ConfigurationManager.ConnectionStrings["RovilConnectionString"].ConnectionString;
                using (SqlConnection con = new SqlConnection(constr))
                {
                    using (SqlCommand cmd = new SqlCommand("Procedure1"))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@Action", "DELETE");
                        cmd.Parameters.AddWithValue("@Id", Id);
                        cmd.Connection = con;
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                }
                this.display();
            }

            catch (Exception ex)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "<Script>", "<scripts> alert('" + ex.GetType().ToString() + "') </script>");
            }

        }
    }
    }
