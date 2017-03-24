using System;
using System.Web;
using System.Web.UI;
using MySql.Data.MySqlClient;

namespace webapplication
{

	public partial class Update : System.Web.UI.Page
	{
		MySqlConnection conn = new MySqlConnection("server=localhost;database=webapp; user=root;port=3306;password=root;");

		public void searchBtn_Click (object sender, EventArgs args)
		{
		}
		public void updateBtn_Click(object sender, EventArgs args)
		{
			updateUser();
		}

		void updateUser()
		{

			try
			{
				string updateQuery = "UPDATE student SET firstName='"+ fname.Text + "',middleInitial='" + mname.Text + "',lastName='" + lname.Text + "' where studentid='"+ id.Text+"';";
				MySqlCommand cmd = new MySqlCommand(updateQuery, conn);
				MySqlDataReader reader;
				conn.Open();
				reader = cmd.ExecuteReader();
				Console.WriteLine("data updated");
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
}
}
