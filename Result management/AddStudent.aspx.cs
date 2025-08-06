using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Result_management
{
    public partial class AddStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {

                f1();
         

            }
        }
        public void f1()
        {

            SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-PVQUJJN; Initial Catalog=SRMS; Integrated Security=true");
            conn.Open();
            SqlDataAdapter adp = new SqlDataAdapter("Select distinct Stream from tblScombination", conn);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            DropDownList2.Items.Clear();
            DropDownList2.DataSource = dt;
            DropDownList2.DataTextField = "Stream";
            DropDownList2.DataBind();
            DropDownList2.Items.Insert(0, new ListItem("Select Stream"));


            conn.Close();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-PVQUJJN; Initial Catalog=SRMS; Integrated Security=true");
            using (SqlCommand cmd = new SqlCommand("Insert into tblstudent(StdName,Gender,DOB,Stream) values(@Name,@G,@DOB,@stream)"))
            {

                //cmd.Parameters.AddWithValue("@Roll", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@Name", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@G", DropDownList1.Text);
                cmd.Parameters.AddWithValue("@DOB", datepicker.Text.Trim());
                cmd.Parameters.AddWithValue("@stream", DropDownList2.SelectedItem.ToString());

                cmd.Connection = conn;
                conn.Open();
                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                {
                    Response.Write("<script>alert('Record Added succesfully')</script>");

                }

                conn.Close();
            }
            //TextBox1.Text = string.Empty;
            TextBox2.Text = string.Empty;
            DropDownList1.Text = string.Empty;
            datepicker.Text = string.Empty;
            DropDownList1.SelectedValue="0";
            DropDownList2.SelectedValue=DropDownList2.Items[0].Text;


            //DropDownList2.Text = string.Empty;
        }




    }

}