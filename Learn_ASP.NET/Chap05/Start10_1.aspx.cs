using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chap05
{
	public partial class Start10_1 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void btn_login_Click(object sender, EventArgs e)
		{
			Session["uid"] = txt_uid.Text;
			Server.Transfer("Start10_2.aspx");

		}
	}
}