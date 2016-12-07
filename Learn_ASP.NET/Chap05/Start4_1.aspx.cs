using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chap05
{
	public partial class Start4_1 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			if (IsPostBack)
				return;

			if (Request.Cookies["name"] != null)
				tb_1.Text = Request.Cookies["name"].Value;

		}

		protected void btn_1_Click(object sender, EventArgs e)
		{
			if (tb_1.Text == "")
				return;

			HttpCookie ck;
			if (Request.Cookies["name"] == null)
				ck = new HttpCookie("name");
			else
				ck = Response.Cookies["name"];

			ck.Value = tb_1.Text;
			ck.Expires = DateTime.Now.AddMinutes(5.0);
			Response.Cookies.Add(ck);

			string url = "Start4_2.aspx?name=" + tb_1.Text;
			Response.Redirect(url);

		}
	}
}