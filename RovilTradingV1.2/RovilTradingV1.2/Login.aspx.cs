using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace RovilTradingV1._2
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        SqlCommand command = new SqlCommand();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginBtn_Click(object sender, EventArgs e)
        {
            try
            {
                con.ConnectionString = ConfigurationManager.ConnectionStrings["RovilConnectionString"].ToString();
                con.Open();
                command.CommandText = "select * from UserLog where UserName='" + UserNameTxb.Text + "' and Password='" + PasswordTxb.Text + "'";
                sda.SelectCommand = command;
                command.Connection = con;
                sda.Fill(ds, "UserLog");

                if (ds.Tables[0].Rows.Count > 0)
                {
                    Session["UserName"] = UserNameTxb.Text;
                    Response.Redirect("Upload.aspx");
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "<Scripts>", "<script> alert('Please make sure that you are a registered user and that yout log-in credentials are correct')</script>");
                }
            }

            catch(Exception ex)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "<Scripts>", "<script> alert('"+ex.GetType().ToString()+"')</script>");
            }
        }
    }
}