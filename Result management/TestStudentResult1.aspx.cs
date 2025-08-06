using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Result_management
{
    public partial class TestStudentResult1 : System.Web.UI.Page
    {
        string roll, str;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["roll"].ToString() != null)
            {
                roll = Session["roll"].ToString();
                str = Session["Stream"].ToString();
                getdata();
            }
            else
            {
                Response.Redirect("CheckResult.aspx");
            }

        }
        public void getdata()
        {
            SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-EKEB5SP5\SQLEXPRESS; Initial Catalog=SRMS; Integrated Security=true");
            SqlCommand cmd = new SqlCommand("Select * from " + str + " where Rollno=@Roll", con);
            con.Open();
            cmd.Parameters.AddWithValue("@Roll", roll);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                lblroll.Text = dr["Rollno"].ToString();
                lblname.Text = dr["StudentName"].ToString();
                lblstream.Text = dr["StreamName"].ToString();
                lblcore1.Text = dr["Core1"].ToString();
                lblcore2.Text = dr["Core2"].ToString();
                lblaecc1.Text = dr["AECC1"].ToString();
                lblge1.Text = dr["GE1"].ToString();
                lbltotal.Text = dr["Total"].ToString();
                lblper.Text = dr["Percentage"].ToString();

            }
            dr.Close();
            con.Close();
        }
    }
}