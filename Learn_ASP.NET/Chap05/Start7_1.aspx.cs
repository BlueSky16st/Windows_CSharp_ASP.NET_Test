using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chap05
{
	public partial class Start7_1 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void btn_1_Click(object sender, EventArgs e)
		{
			Session["s_txt"] = tb_1.Text == "" ? "空字符串" : tb_1.Text;

		}

		protected void btn_2_Click(object sender, EventArgs e)
		{
			string[] str = tb_2.Text.Split(',');
			Session["s_sarr"] = str;

		}

		protected void btn_3_Click(object sender, EventArgs e)
		{
			Session["s_cal"] = cal_1;

		}

		protected void btn_4_Click(object sender, EventArgs e)
		{
			Session.Add("s_txt", "123456");

		}
	}
}