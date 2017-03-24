using System;
using System.IO;
using System.Windows.Forms;
using System.Data;
using System.Configuration;
using MySql.Data.MySqlClient;

namespace webapplication
{

	public partial class Add : System.Web.UI.Page
	{

		public void registerClick(object sender, EventArgs args)
		{
			addNewUser();
		}

		void addNewUser()
		{

			MySqlConnection conn = new MySqlConnection("server=localhost;database=webapp; user=root;port=3306;password=root");
			if (image.PostedFile != null) 
			{
				// create file path for image
				string FileName = Path.GetFileName(image.PostedFile.FileName);
				image.SaveAs(Server.MapPath("images/" + FileName));

				// query database
				string insertQuery = "INSERT INTO student(firstName, middleInitial, lastName, mobileNumber1, mobileNumber2, avatar, avatarpath, programme_id, club_id)" +
					"VALUES( '" + fname.Text + "','" + mname.Text + "','" + lname.Text + "','" + phoneNumberOne.Text + "','" + phoneNumberTwo.Text + "','" + image.FileName + "','images/"+ image.FileName +"','" + ProgramList.Text + "','" + club.Text + "')";
				MySqlCommand cmd = new MySqlCommand(insertQuery, conn);

				try
				{
					conn.Open();
					cmd.ExecuteReader();
					MessageBox.Show("data entered");
					Server.Transfer("Search.aspx", true);
				}
				catch (MySqlException ex)
				{
					MessageBox.Show("error jack" + ex);
				}
				finally
				{
					conn.Close();
				}
			}

		}
	}
}
