using System;
using System.Web;
using System.Web.UI;
using MySql.Data.MySqlClient;
using System.Data.SqlClient;
using System.Text;

namespace webapplication
{

	public partial class Default : System.Web.UI.Page
	{

			protected void Page_Load(object sender, EventArgs args)
			{
			System.Text.StringBuilder sb = new System.Text.StringBuilder();

				string connStr = "server=localhost;user=root;port=3306;password=root;";
				MySqlConnection conn = new MySqlConnection(connStr);
				MySqlCommand cmd;
				string SQL;
				try
				{
					//Create Database
					conn.Open();
					SQL = "CREATE DATABASE IF NOT EXISTS webapp";
					cmd = new MySqlCommand(SQL, conn);
					cmd.ExecuteNonQuery();
					conn.Close();


					//Create programme table
					connStr = "server=localhost;database=webapp; user=root;port=3306;password=root;";
					conn = new MySqlConnection(connStr);
					conn.Open();
					SQL = "CREATE TABLE IF NOT EXISTS programme (programme_id INT, programmeName varchar(50), primary key(programme_id))";
					cmd = new MySqlCommand(SQL, conn);
					cmd.ExecuteNonQuery();
					conn.Close();


					//Create Club table
					connStr = "server=localhost;database=webapp; user=root;port=3306;password=root;";
					conn = new MySqlConnection(connStr);
					conn.Open();
					SQL = "CREATE TABLE IF NOT EXISTS club (club_id INT, club varchar(50), primary key(club_id))";
					cmd = new MySqlCommand(SQL, conn);
					cmd.ExecuteNonQuery();
					conn.Close();

					//Create student table

					connStr = "server=localhost;database=webapp; user=root;port=3306;password=root;";
					conn = new MySqlConnection(connStr);
					conn.Open();
				SQL = "CREATE TABLE IF NOT EXISTS student (studentid INT NOT NULL AUTO_INCREMENT, firstName varchar(50), middleInitial char(1), lastName varchar(50), mobileNumber1 varchar(50), mobileNumber2 varchar(50),avatar varchar(1000), avatarpath varchar(1000), programme_id INT, club_id INT, PRIMARY KEY(studentid), FOREIGN KEY(club_id) REFERENCES club(club_id), FOREIGN KEY(programme_id) REFERENCES programme(programme_id));";
					cmd = new MySqlCommand(SQL, conn);
					cmd.ExecuteNonQuery();
					conn.Close();

				}
				catch (MySqlException ex)
				{
					Console.WriteLine(ex);
					return;
				}
			}
		}
	}
