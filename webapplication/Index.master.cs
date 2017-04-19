using System;
using System.IO;
using System.Windows.Forms;
using System.Data;
using System.Configuration;
using MySql.Data.MySqlClient;
using System.Web;

namespace webapplication
{
	public partial class Index : System.Web.UI.MasterPage
	{
		protected void Page_Load(object sender, EventArgs args)
		{

			//create cookies to pass first name to other pages
			cookieSetter();

		}

		void cookieSetter()
		{
			try
			{
				if (Request.Cookies["fname"] != null)
				{
						
					Response.Write(Request.Cookies["fname"].Value);
				}
			}
			catch (Exception ex)
			{
				Console.WriteLine(ex);
			}
		}
	}
}
