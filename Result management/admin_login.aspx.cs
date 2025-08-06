using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using static System.Net.Mime.MediaTypeNames;
using System.Drawing;

namespace Result_management
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            //SqlConnection conn = new SqlConnection(@"Data Source=LAPTOP-EKEB5SP5; Initial Catalog=SRMS; Integrated Security=true");
            SqlConnection conn1 = new SqlConnection(@"Data Source = LAPTOP-EKEB5SP5\SQLEXPRESS; Initial Catalog = SRMS; Integrated Security = True");
            SqlCommand cmd = new SqlCommand("select * from admin where UserName=@userID and Password=@pass ", conn1);
            cmd.Parameters.AddWithValue("@userID", TextBox1.Text);
            cmd.Parameters.AddWithValue("@pass", TextBox2.Text);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            conn1.Open();
            if(dt.Rows.Count > 0)
            {
                Session["Username"] = TextBox1.Text;
                Response.Redirect("dashboard.aspx");
                conn1.Close();
            }
            else
            {
                Label1.Text = "Username & Password not correct try again";
            }
            conn1.Close();

        }

    }
 }

