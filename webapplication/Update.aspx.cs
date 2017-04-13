using System;
using System.Web;
using System.Web.UI;
using System.Windows.Forms;
using MySql.Data.MySqlClient;

namespace webapplication
{

	public partial class Update : System.Web.UI.Page
	{
		MySqlConnection conn = new MySqlConnection("server=localhost;database=webapp; user=root;port=3306;password=root;");


		public void updateBtn_Click(object sender, EventArgs args)
		{
            string confirmValue = Request.Form["confirm_value"];
            if (confirmValue == "Yes")
            {
                 updateUser();
            }
            else
            {
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('You clicked cancel!')", true);
            }
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
                this.Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Student Data Updated.')", true);
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
