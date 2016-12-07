using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chap05
{
	public partial class Start8_2 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			if (Session["uid"] == null)
				Response.Redirect("Start8_1.aspx");

			Response.Write("欢迎：" + Session["uid"]);

		}
	}
}