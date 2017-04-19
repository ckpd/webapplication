using System;
using MySql.Data.MySqlClient;

namespace webapplication
{

	public partial class Default : System.Web.UI.Page
	{

		protected void Page_Load(object sender, EventArgs args)
		{
			cookieSetter();

		}

		void cookieSetter()
		{
			try
			{
				if (Request.Cookies["fname"] != null)
				{
					//Label.Text = Server.HtmlEncode(Request.Cookies["fname"].Value) + " So You got this far";
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
