using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chap05
{
	public partial class Start2_2 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			lb_1.Text = Request.QueryString["id"];

			lb_2.Text = Request.QueryString["name"];

			lb_3.Text = Request.QueryString["chk"];

			string res = Request["soft"] + " " + Request["website"];
			lb_4.Text = res;

		}
	}
}