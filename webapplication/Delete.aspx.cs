using System;
using System.Web;
using System.Web.UI;
using MySql.Data.MySqlClient;

namespace webapplication
{

	public partial class Delete : System.Web.UI.Page
	{
		MySqlConnection conn = new MySqlConnection("server=localhost;database=webapp; user=root;port=3306;password=root;");

		public void searchBtn_Click(object sender, EventArgs args)
		{
		}
		public void deleteBtn_Click(object sender, EventArgs args)
		{
			deleteUser();
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
	}
}
