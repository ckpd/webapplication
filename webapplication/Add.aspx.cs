using System;
using System.IO;
using System.Windows.Forms;
using System.Data;
using System.Configuration;
using MySql.Data.MySqlClient;
using System.Web;

namespace webapplication
{
	public partial class Add : System.Web.UI.Page
	{

		public void registerClick(object sender, EventArgs args)
		{
			//call method to add a new user
			addNewUser();
		}

		void addNewUser()
		{

			MySqlConnection conn = new MySqlConnection("server=localhost;database=webapp; user=root;port=3306;password=root");
			if (image.PostedFile != null) 
			{
				// create file path for image
				string cheat = DateTime.Now.ToString("yyyMMddddhhmmssfffff"); // randomizes the file name based on time including seconds
				string FileName = Path.GetFileName(image.PostedFile.FileName);
				if (image.HasFile)
				{
					image.SaveAs(Server.MapPath("public/images/" + FileName + cheat));
				}
				// query database
				string insertQuery = "INSERT INTO student(firstName, middleInitial, lastName, mobileNumber1, mobileNumber2, avatar, avatarpath, programme_id, club_id)" +
					"VALUES( '" + fname.Text.ToLower() + "','" + mname.Text.ToLower() + "','" + lname.Text.ToLower() + "','" + phoneNumberOne.Text + "','" + phoneNumberTwo.Text + "','" + image.FileName + "','public/images/"+ image.FileName+cheat+"','" + ProgramList.Text + "','" + club.Text + "')";
				MySqlCommand cmd = new MySqlCommand(insertQuery, conn);

				try
				{
					conn.Open();
					cmd.ExecuteReader();
					Response.Cookies["fname"].Value = fname.Text;
					Response.Cookies["lname"].Value = lname.Text;
					Response.Cookies["fname"].Expires = DateTime.Now.AddDays(1);
					Response.Redirect("Default.aspx");
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
