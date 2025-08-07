using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Web.UI;

namespace Result_management
{
    public partial class TestStudentResult1 : System.Web.UI.Page
    {
        // Protected properties to be accessed by the ASPX page for the progress bars
        protected int core1Percentage;
        protected int core2Percentage;
        protected int aecc1Percentage;
        protected int ge1Percentage;

        // Variables to hold student data from the session
        private string roll;
        private string stream;

        private string connectionString = WebConfigurationManager.ConnectionStrings["SRMSConnectionString13"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Safely check if session variables exist
                if (Session["roll"] != null && Session["Stream"] != null)
                {
                    roll = Session["roll"].ToString();
                    stream = Session["Stream"].ToString();
                    getdata();
                }
                else
                {
                    // Redirect to the check result page if session is missing
                    Response.Redirect("CheckResult.aspx");
                }
            }
        }
        protected void btnClose_Click(object sender, EventArgs e)
        {
            // Clear the session variables related to the result
            Session.Remove("roll");
            Session.Remove("Stream");

            // Redirect the user back to the default homepage
            Response.Redirect("default.aspx");
        }


        public void getdata()
        {
            // Dynamically construct the table name from the streamName. This is needed for your database schema.
            // WARNING: Directly using Session values in the table name can be a security risk.
            // Ensure your stream names are validated to prevent malicious input.
            string tableName = stream;
            string query = $"SELECT * FROM {tableName} WHERE Rollno = @Rollno";

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    // Use a parameterized query to prevent SQL injection
                    cmd.Parameters.AddWithValue("@Rollno", roll);
                    con.Open();
                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        if (dr.Read())
                        {
                            // Populate the labels with data from the database
                            lblroll.Text = dr["Rollno"].ToString();
                            lblname.Text = dr["StudentName"].ToString();
                            lblstream.Text = dr["StreamName"].ToString();

                            int core1Marks = Convert.ToInt32(dr["Core1"]);
                            int core2Marks = Convert.ToInt32(dr["Core2"]);
                            int aecc1Marks = Convert.ToInt32(dr["AECC1"]);
                            int ge1Marks = Convert.ToInt32(dr["GE1"]);

                            lblcore1.Text = core1Marks.ToString();
                            lblcore2.Text = core2Marks.ToString();
                            lblaecc1.Text = aecc1Marks.ToString();
                            lblge1.Text = ge1Marks.ToString();

                            lbltotal.Text = dr["Total"].ToString();
                            lblper.Text = dr["Percentage"].ToString();

                            // Calculate percentages for the progress bars (assuming max marks is 100 per subject)
                            core1Percentage = (core1Marks > 100) ? 100 : core1Marks;
                            core2Percentage = (core2Marks > 100) ? 100 : core2Marks;
                            aecc1Percentage = (aecc1Marks > 100) ? 100 : aecc1Marks;
                            ge1Percentage = (ge1Marks > 100) ? 100 : ge1Marks;

                            // Determine Pass/Fail status (assuming 33 is the passing mark)
                            if (core1Marks >= 33 && core2Marks >= 33 && aecc1Marks >= 33 && ge1Marks >= 33)
                            {
                                lblFinalStatus.Text = "PASS";
                                lblFinalStatus.CssClass = "text-2xl font-extrabold ml-2 text-green-800";
                            }
                            else
                            {
                                lblFinalStatus.Text = "FAIL";
                                lblFinalStatus.CssClass = "text-2xl font-extrabold ml-2 text-red-800";
                            }
                        }
                    }
                }
            }
        }
    }
}
