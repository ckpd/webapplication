using System;
using System.Web;
using System.Web.UI;
using MySql.Data.MySqlClient;

namespace webapplication
{

	public partial class Search : System.Web.UI.Page
	{
		MySqlConnection conn = new MySqlConnection("server=localhost;database=webapp; user=root;port=3306;password=root;");


		public void searchBtn_Click(object sender, EventArgs args)
		{
			searchStudents();
		}

		void searchStudents()
		{


			MySqlDataReader reader = null;
			try
			{
				conn.Open();
				string searchQuery = "SELECT * FROM student WHERE studentid ='"+ id.Text +"';";
				MySqlCommand cmd = new MySqlCommand(searchQuery, conn);
				reader = cmd.ExecuteReader();
				while (reader.Read())
				{
					// get result of each column
					string fname = (string)reader["firstName"];

					//print out
					Console.WriteLine(fname);
				}

			}
			finally
			{
				// close reader
				if (reader != null) {
					reader.Close();
				}
			}

		}
	}
}
