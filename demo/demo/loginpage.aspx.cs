using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace demo
{
    public partial class loginpage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Demo"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmr = new SqlCommand("LoginDetails", con);
            cmr.CommandType = CommandType.StoredProcedure;
            cmr.Parameters.AddWithValue("@EmailID", TxtEmailID.Text);
            cmr.Parameters.AddWithValue("@Password", TxtPasswrd.Text);
            string name = Convert.ToString(cmr.ExecuteScalar());
            if(name==null || name=="")
            {
                Label1.Visible = true;
            }
            else
            {
                Label1.Visible = false;
                Session["Username"] = name;
                Response.Redirect("~/HtmlPage1.html");
            }
            con.Close();
        }
    }
}