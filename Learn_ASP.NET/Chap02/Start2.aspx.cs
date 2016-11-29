using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chap02
{
	public partial class Start2 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void Button1_Click(object sender, EventArgs e)
		{
			Label1.Text = TextBox1.Text + "今年" + TextBox2.Text + "岁";
		}

		protected void Button2_Click(object sender, EventArgs e)
		{
			Label2.Text = "我们一共有" + TextBox3.Text + TextBox4.Text;
		}
	}
}