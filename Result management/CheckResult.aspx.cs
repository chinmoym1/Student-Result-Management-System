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
    public partial class CheckResult : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Button1.Enabled= false;
        }

       
        protected void Button1_Click(object sender, EventArgs e)
        {
            string tbl;
            if (DropDownList1.SelectedValue=="1")
            {
                tbl = "Sem1";
            }
            else if (DropDownList1.SelectedValue == "2")
            {
                tbl = "Sem2";
            }
            else if (DropDownList1.SelectedValue == "3")
            {
                tbl = "Sem3";
            }
            else if (DropDownList1.SelectedValue == "4")
            {
                tbl = "Sem4";
            }
            else if (DropDownList1.SelectedValue == "5")
            {
                tbl = "Sem5";
            }
            else if (DropDownList1.SelectedValue == "6")
            {
                tbl = "Sem6";
            }
            else
            {
                Label3.Text = "please select Semester";
                tbl = "";
            }

            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-PVQUJJN; Initial Catalog=SRMS; Integrated Security=true");
            SqlCommand cmd = new SqlCommand("Select * from "+tbl+" where Rollno=@Roll",con);
            con.Open();
            cmd.Parameters.AddWithValue("@Roll",TextBox1.Text);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Session["Stream"] = tbl;
                Session["roll"] = TextBox1.Text;
                if (DropDownList1.SelectedValue == "1")
                {
                    Response.Redirect("StudentResult1.aspx");
                }
                else if (DropDownList1.SelectedValue == "2")
                {
                    // Response.Redirect("StudentResult2.aspx");
                    //Response.Write("<script>alert('No Record Found')</script>");

                }
                else if (DropDownList1.SelectedValue == "3")
                {
                    
                }
                else if (DropDownList1.SelectedValue == "4")
                {
                    
                }
                else if (DropDownList1.SelectedValue == "5")
                {
                    
                }
                else if (DropDownList1.SelectedValue == "6")
                {
                    
                }
                else
                {
                    Label3.Text = "please select Semester";
                    tbl = "";
                }
                    
            }
            dr.Close();
            con.Close();
        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (TextBox1.Text != "")
            {
                Button1.Enabled = true;
            }
            else
            {

            }
        }
    }
}