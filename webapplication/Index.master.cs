using System;
using System.Web;
using System.Web.UI;
using MySql.Data.MySqlClient;

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
					Console.WriteLine(Server.HtmlEncode(Request.Cookies["fname"].Value));
				}
			}
			catch (Exception ex)
			{
				Console.WriteLine(ex);
			}
		}
	}
}
