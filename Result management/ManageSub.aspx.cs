using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Result_management
{
    public partial class ManageSub : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=LAPTOP-EKEB5SP5\SQLEXPRESS; Initial Catalog=SRMS; Integrated Security=true");

        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible=false;
            if (!this.IsPostBack)
            {
                this.getdata();
             }
        }
        public void getdata()
        {
            SqlCommand cmd = new SqlCommand("Select * from tblsubject", conn);
            conn.Close();
            conn.Open();
            DataSet dt = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            conn.Close();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
                Panel1.Visible = true;
                GridViewRow row = GridView1.SelectedRow;
                Label4.Text = row.Cells[1].Text;
                TextBox1.Text = row.Cells[2].Text;
                TextBox2.Text = row.Cells[3].Text;
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            using (SqlConnection con1 = new SqlConnection(@"Data Source=LAPTOP-EKEB5SP5\SQLEXPRESS; Initial Catalog=SRMS; Integrated Security=true"))
            {
                using (SqlCommand cmd = new SqlCommand("Update tblsubject set SubjectName=@Name,SubjectCode=@code where ID=@ID"))
                {
                    cmd.Parameters.AddWithValue("@Name", TextBox1.Text.Trim());
                    cmd.Parameters.AddWithValue("@code", TextBox2.Text.Trim());
                    cmd.Parameters.AddWithValue("@ID", Label4.Text.Trim());
                    cmd.Connection = con1;
                    con1.Open();

                    int i = cmd.ExecuteNonQuery();
                    if (i > 0)
                    {
                        Response.Write("<script>alert('Record Updated succesfully')</script>");
                        getdata();
                        Panel1.Visible = false;
                        //conn.Close();
                    }
                    else
                    {
                        Label4.Text = "Record not Updated.... Try Again";
                        Label4.ForeColor = System.Drawing.Color.Red;
                    }
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("delete from tblsubject where ID=@ID", conn);
            cmd.Parameters.AddWithValue("@ID", Label4.Text);
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                conn.Close();
                Response.Write("<script>alert('Record Deleted succesfully')</script>");
                getdata();
                Panel1.Visible = false;
            }
            else
            {
                Label4.Text = "Record not deleted.... Try Again";
                Label4.ForeColor = System.Drawing.Color.Red;
            }
            conn.Close();
        }
    }

}