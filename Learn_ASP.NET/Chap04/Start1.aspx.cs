using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chap04
{
	public partial class Start1 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{		
			// 如果是回发页面，则不初始化控件内容
			// 在页面中的操作，如“按钮”或引发“postback”的控件，都是回发页面
			if (IsPostBack)
				return;

			lb_1.Text = DateTime.Now.ToString();

			cb_1.Checked = true;

			ddl_1.Items[1].Selected = true;

			tb_1.TextMode = TextBoxMode.Password;
			tb_2.Enabled = false;
			tb_3.Text = "";

			tb_5.Text = "";
			rbl_1.SelectedIndex = 0;
			lb_2.SelectedIndex = 1;

		}

		protected void btn_1_Click(object sender, EventArgs e)
		{
			char[] ch = tb_3.Text.ToCharArray();

			tb_4.Text = "";
			foreach (char c in ch)
			{
				tb_4.Text += c + " ";
			}

		}

		protected void btn_2_Click(object sender, EventArgs e)
		{
			string res = "";
			res = tb_5.Text + ", " +
				((rbl_1.SelectedIndex == 0) ? "男" : "女") + ", " +
				lb_2.SelectedValue;

			tb_6.Text = res;

		}
	}
}