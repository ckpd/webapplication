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
			DialogResult result = MessageBox.Show("Are You sure?", "Confirmation", MessageBoxButtons.YesNo);
			if (result == DialogResult.Yes)
			{
				deleteUser();
			}
			else if (result == DialogResult.No) {
				Response.Redirect("Delete.aspx");
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
				Console.WriteLine("data deleted");
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
				string searchQuery = "SELECT * FROM student WHERE studentid = '" + id.Text + "' OR firstName ='" + fname.Text + "' OR middleInitial ='" + mname.Text + "' OR lastName ='" + lname.Text + "' OR programme_id ='" + ProgramList.Text + "' OR club_id ='" + club.Text + "';";
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
