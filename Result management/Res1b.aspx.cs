using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Reflection.Emit;

namespace Result_management
{
    public partial class Res1b : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!this.IsPostBack)
            {
                Panel1.Visible = false;
                class1();
                Button2.Enabled = false;
               
            }
            
        }
        public void class1()
        {
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-PVQUJJN; Initial Catalog=SRMS; Integrated Security=true");
            con.Open();
            SqlDataAdapter adp = new SqlDataAdapter("Select Distinct Stream from tblScombination",con);
            DataTable dt= new DataTable();
            adp.Fill(dt);
            DropDownList1.Items.Clear();
            DropDownList1.DataTextField = "Stream";
            DropDownList1.DataSource= dt;
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, new ListItem("Select Class"));
            con.Close();
        }
        public void name()
        {
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-PVQUJJN; Initial Catalog=SRMS; Integrated Security=true");
            con.Open();
            SqlDataAdapter adp = new SqlDataAdapter("Select * from tblstudent where Stream='"+DropDownList1.SelectedValue+"'", con);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            DropDownList2.Items.Clear();
            DropDownList2.DataTextField = "StdName";
            DropDownList2.DataSource = dt;
            DropDownList2.DataBind();
            DropDownList2.Items.Insert(0, new ListItem("Select Student"));
            con.Close();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            name();
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            roll();
            TextBox2.Text = DropDownList2.SelectedValue.ToString();
            TextBox3.Text= DropDownList1.SelectedValue.ToString();

            TextBox1.ReadOnly=true;
            TextBox2.ReadOnly=true;
            TextBox3.ReadOnly=true;
        }
        public void roll()
        {
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-PVQUJJN; Initial Catalog=SRMS; Integrated Security=true");
            con.Open();
            SqlCommand cmd = new SqlCommand("Select Rollno from tblstudent where StdName='" + DropDownList2.SelectedValue + "'", con);
            SqlDataReader dr= cmd.ExecuteReader();
            while(dr.Read())
            {
                TextBox1.Text = dr["Rollno"].ToString();
            }
            dr.Close();
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TextBox8.Text= Convert.ToString(Convert.ToInt32(TextBox4.Text) + Convert.ToInt32(TextBox5.Text) + Convert.ToInt32(TextBox6.Text) + Convert.ToInt32(TextBox7.Text));
            int aa=Convert.ToInt32(TextBox8.Text);
            int bb = (aa / 4);
            TextBox9.Text=Convert.ToString(bb) + "%";

            TextBox8.ReadOnly=true;
            TextBox9.ReadOnly = true;
            Button1.Enabled = true;
            Button2.Enabled = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-PVQUJJN; Initial Catalog=SRMS; Integrated Security=true");
            con.Open();
            SqlCommand cmd = new SqlCommand("Insert into Sem1(Rollno,StudentName,StreamName,Core1,Core2,AECC1,GE1,Total,Percentage) values('"+TextBox1.Text+"','"+TextBox2.Text+"','"+TextBox3.Text+"','"+TextBox4.Text+"','"+TextBox5.Text+"','"+TextBox6.Text+"','"+TextBox7.Text+"','"+TextBox8.Text+"','"+TextBox9.Text+"')", con);
            int i=cmd.ExecuteNonQuery();
            con.Close();
            if(i>0)
            {
                Response.Write("<script>alert('Record Saved')</script>");
            }
            else
            {
                Response.Write("<script>alert('Error')</script>");
            }

         TextBox4.Text = String.Empty;
         TextBox5.Text = String.Empty;
         TextBox6.Text = String.Empty;
         TextBox7.Text= String.Empty;
         TextBox8.Text= String.Empty;
         TextBox9.Text = String.Empty;
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-PVQUJJN; Initial Catalog=SRMS; Integrated Security=true");
            SqlCommand cmd = new SqlCommand("select * from Sem1 where Rollno=@Roll", conn);
            cmd.Parameters.AddWithValue("Roll", TextBox1.Text);
           
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            conn.Open();
            if (dt.Rows.Count > 0)
            {
                Response.Write("<script>alert('Record already Saved!....Select other Student')</script>");
            }
            else
            {
                Response.Write("<script>alert('Enter the record:')</script>");
            }
            conn.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-PVQUJJN; Initial Catalog=SRMS; Integrated Security=true");
            SqlCommand cmd = new SqlCommand("select * from Sem1 where Rollno=@Roll", conn);
            cmd.Parameters.AddWithValue("Roll", TextBox1.Text);

            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            conn.Open();
            if (dt.Rows.Count > 0)
            {
                Response.Write("<script>alert('Record already Saved!....Select other Student')</script>");
            }
            else
            {
                Response.Write("<script>alert('Enter the record:')</script>");

            }
            conn.Close();
        }
    }
}