using System;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Windows.Forms;
using MySql.Data.MySqlClient;

namespace webapplication
{

	public partial class Delete : System.Web.UI.Page
	{
		MySqlConnection conn = new MySqlConnection("server=localhost;database=webapp; user=root;port=3306;password=root;");

		public void searchBtn_Click(object sender, EventArgs args)
		{
			searchStudents();
		}

		public void deleteBtn_Click(object sender, EventArgs args)
		{
            string confirmValue = Request.Form["confirm_value"];
            if (confirmValue == "Yes")
            {
                deleteUser();
            }
            else
            {
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('You clicked NO!')", true);
            }
        }

		void deleteUser()
		{

			try
			{
				string updateQuery = "delete from student where studentid='" + id.Text + "';";
				MySqlCommand cmd = new MySqlCommand(updateQuery, conn);
				MySqlDataReader reader;
				conn.Open();
				reader = cmd.ExecuteReader();
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Student Deleted!!')", true);
                while (reader.Read())
				{

					conn.Close();
				}
			}
			catch (MySqlException ex)
			{
				Console.WriteLine("Error occured" + ex);
			}
		}


		void searchStudents()
		{
			DataTable dt = new DataTable();

			try
			{
				conn.Open();
				string searchQuery = "SELECT * FROM student WHERE studentid = '" + id.Text + "' OR firstName ='" + fname.Text + "' OR middleInitial ='" + mname.Text + "' OR lastName ='" + lname.Text +"';";
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
