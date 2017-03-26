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
		MySqlConnection conn = new MySqlConnection("server=localhost;database=webapp; user=root;port=3306;password=root;");

		public void searchBtn_Click(object sender, EventArgs args)
		{
			searchStudents();
		}

		void searchStudents()
		{

			DataTable dt = new DataTable();


			try
			{
				conn.Open();
				string searchQuery = "SELECT * FROM student WHERE studentid = '"+id.Text+"' OR firstName ='" + fname.Text + "';";
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
			catch (MySqlException ex) {
				MessageBox.Show(" "+ex);
			}
			finally
			{
			}

		}
	}
}
