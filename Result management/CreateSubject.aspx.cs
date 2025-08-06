using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Result_management
{
    public partial class CreateSubject : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(@"Data Source = LAPTOP-EKEB5SP5\SQLEXPRESS; Initial Catalog = SRMS; Integrated Security = True"))
           // using (SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-PVQUJJN; Initial Catalog=SRMS; Integrated Security=true"))
            {
                using (SqlCommand cmd = new SqlCommand("Insert into tblsubject(SubjectName,SubjectCode) values(@Name,@code)"))
                {
                    cmd.Parameters.AddWithValue("@Name", TextBox1.Text.Trim());
                    cmd.Parameters.AddWithValue("@code", TextBox2.Text.Trim());
                  
                    cmd.Connection = conn;
                    conn.Open();
                    int i = cmd.ExecuteNonQuery();
                    if (i > 0)
                    {
                        Response.Write("<script>alert('Record Added succesfully')</script>");
                        
                    }
                    conn.Close();
                }
            }
            TextBox1.Text = String.Empty;
            TextBox2.Text = String.Empty;
        }
    }
}