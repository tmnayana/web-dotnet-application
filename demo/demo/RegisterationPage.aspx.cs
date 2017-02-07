using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.IO;

namespace demo
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Demo"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("InsertDetails", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Name", TxtName.Text);
            cmd.Parameters.AddWithValue("@Address", TxtAddress.Text);
            cmd.Parameters.AddWithValue("@Contact", TxtContact.Text);
            cmd.Parameters.AddWithValue("@EmailID", TxtEmailID.Text);
            cmd.Parameters.AddWithValue("@Password", TxtPassword.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            TxtName.Text = "";
            TxtAddress.Text = "";
            TxtContact.Text = "";
            TxtEmailID.Text = "";
            TxtPassword.Text = "";

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/loginpage.aspx");

        }
    }
}