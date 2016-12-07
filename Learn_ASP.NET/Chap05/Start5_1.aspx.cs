using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chap05
{
	public partial class Start5_1 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void btn_1_Click(object sender, EventArgs e)
		{
			lab_1.Text = DateTime.Now.ToString();

		}

		protected void btn_2_Click(object sender, EventArgs e)
		{
			if (tb_2.Text == "")
				return;
			lb_1.Items.Add(tb_2.Text);

		}

	}
}