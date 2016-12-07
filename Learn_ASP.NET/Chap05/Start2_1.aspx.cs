using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chap05
{
	public partial class Start2_1 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void btn_1_Click(object sender, EventArgs e)
		{
			string name = tb_1.Text;
			string url = "Start2_2.aspx?name=" + name;
			Response.Redirect(url);

		}

		protected void cb_1_CheckedChanged(object sender, EventArgs e)
		{
			string check = cb_1.Checked.ToString();
			string url = "Start2_2.aspx?chk=" + check;
			Server.Transfer(url);

		}

		protected void btn_2_Click(object sender, EventArgs e)
		{
			string soft = ddl_1.SelectedValue;
			string web = ddl_2.SelectedValue;
			string url = "Start2_2.aspx?soft=" + soft + "&website=" + web;

			Response.Redirect(url);

		}
	}
}