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
			//handle images
			string contentType = image.PostedFile.ContentType;
			using (Stream fs = image.PostedFile.InputStream) 
			{
				using (BinaryReader br = new BinaryReader(fs))
				{ 
					using (MySqlConnection conn = new MySqlConnection("server=localhost;database=webapp; user=root;port=3306;password=root;")) 
					{ 
						try
						{
							string insertQuery = "INSERT INTO student(firstName, middleInitial, lastName, mobileNumber1, mobileNumber2, avatar, programme_id, club_id)" +
								"VALUES( '" + fname.Text + "','" + mname.Text + "','" + lname.Text + "','" + phoneNumberOne.Text + "','" + phoneNumberTwo.Text + "','" + image.FileName + "','" + ProgramList.Text + "','" + club.Text + "')";
							MySqlCommand cmd = new MySqlCommand(insertQuery, conn);
							conn.Open();
							cmd.ExecuteReader();
							Console.WriteLine("data entered");
							Server.Transfer("Search.aspx", true);

							conn.Close();
						}
						catch (MySqlException ex)
						{
							MessageBox.Show("Error Joe" + ex);
						}
					
					}
				}
			}




		}
	}
}
