using System;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Windows.Forms;
using MySql.Data.MySqlClient;

namespace webapplication
{

    public partial class Search : System.Web.UI.Page
    {
        MySqlConnection conn = new MySqlConnection("server=localhost;database=webapp; user=root;port=3306;password=root;");//update this
        protected void RepButton1_Click(object sender, EventArgs e)
        {
            programreport();
            this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Student Report by Program enrolled:')", true);
        }

        protected void RepButton2_Click(object sender, EventArgs e)
        {
            clubreport();
            this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Student Report by club envolved:')", true);
        }

        public void searchBtn_Click(object sender, EventArgs args)
        {
            searchStudents();
        }




        void programreport()
        {
            DataTable dt = new DataTable();


            try
            {
                conn.Open();
                string searchQuery = "SELECT * FROM student WHERE programme_id = '" + ProgramList.Text + "' OR firstName ='" + fname.Text + "';";
                MySqlCommand cmd = new MySqlCommand(searchQuery, conn);
                MySqlDataAdapter msda = new MySqlDataAdapter();

                // get result of each column
                msda.SelectCommand = cmd;
                msda.Fill(dt);
                stureportGridView.DataSource = dt;
                stureportGridView.DataBind();

                //print out
                Console.WriteLine(fname);


            }
            catch (MySqlException ex)
            {
            	this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert"," "+ ex, true);
			}
            finally
            {
            }
        }




        void clubreport()
        {
            DataTable dt = new DataTable();


            try
            {

                conn.Open();
                string searchQuery = "SELECT * FROM student WHERE club_id = '" + club.Text + "' OR firstName ='" + fname.Text + "';";
                MySqlCommand cmd = new MySqlCommand(searchQuery, conn);
                MySqlDataAdapter msda = new MySqlDataAdapter();

                // get result of each column
                msda.SelectCommand = cmd;
                msda.Fill(dt);
                stureportGridView.DataSource = dt;
                stureportGridView.DataBind();

                //print out
                Console.WriteLine(fname);


            }
            catch (MySqlException ex)
            {
                MessageBox.Show(" " + ex);
            }
            finally
            {
            }
        }




        void searchStudents()
        {

            DataTable dt = new DataTable();


            try
            {
                conn.Open();
                string searchQuery = "SELECT * FROM student WHERE studentid = '" + id.Text + "' OR firstName ='" + fname.Text + "';";
                MySqlCommand cmd = new MySqlCommand(searchQuery, conn);
                MySqlDataAdapter msda = new MySqlDataAdapter();

                // get result of each column
                msda.SelectCommand = cmd;
                msda.Fill(dt);
                StudentGridView.DataSource = dt;
                StudentGridView.DataBind();

                //print out
                Console.WriteLine(fname);


            }
            catch (MySqlException ex)
            {
                MessageBox.Show(" " + ex);
            }
            finally
            {
            }

        }
    }
}
