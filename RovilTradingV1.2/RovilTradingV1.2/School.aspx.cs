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
    public partial class School : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        SqlCommand command = new SqlCommand();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            DisplaySchoolStationary();
        }

        public void DisplaySchoolStationary()
        {
            con.ConnectionString = ConfigurationManager.ConnectionStrings["RovilConnectionString"].ToString();
            sda = new SqlDataAdapter("select ItemImage,ItemDescription,ItemPrice from ItemsTbl where ItemName = 'School Stationary' ", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            ListView4.DataSource = dt;
            DataBind();
        }

    }
}