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
    public partial class Subjectcomb : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=LAPTOP-EKEB5SP5\SQLEXPRESS; Initial Catalog=SRMS; Integrated Security=true");

        protected void Page_Load(object sender, EventArgs e)
        {
           if (!IsPostBack)
            {
                Stream();
                Subject();
            }

        }
        public void Stream()
        {
            //conn.Open();
            SqlDataAdapter adp = new SqlDataAdapter("Select * from tblclass", conn);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            dt.Columns.Add("Name", typeof(string), "StreamName +' '+'Semester' +'-' +Semester");
            DropDownList1.Items.Clear();
            DropDownList1.DataSource = dt;
            DropDownList1.DataTextField = "Name";
            DropDownList1.DataValueField = "ID";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, new ListItem("Select Stream Name"));
            conn.Close();
        }
        public void Subject()
        {
            conn.Open();
            SqlDataAdapter adp = new SqlDataAdapter("Select * from tblsubject", conn);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            DropDownList2.Items.Clear();
            DropDownList2.DataSource = dt;
            DropDownList2.DataTextField = "SubjectName";
            DropDownList2.DataBind();
            DropDownList2.Items.Insert(0, new ListItem("Select Subject"));
            conn.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlCommand cmd = new SqlCommand("Insert into tblScombination(Stream,Subject) values(@Name,@subject)"))
            {
                cmd.Parameters.AddWithValue("@Name", DropDownList1.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@subject", DropDownList2.Text);

                cmd.Connection = conn;
                conn.Open();
                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                {
                    Response.Write("<script>alert('Record Added succesfully')</script>");
                    Stream();
                    Subject();
                }
                conn.Close();
            }
        }
    }
}