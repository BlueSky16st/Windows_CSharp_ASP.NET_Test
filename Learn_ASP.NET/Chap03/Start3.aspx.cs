using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chap03
{
	public partial class Start3 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void btn_submit1_Click(object sender, EventArgs e)
		{
			if (rbtn_1.Checked)
				txt_result1.Text = "选中了：" + rbtn_1.Text;
			if (rbtn_2.Checked)
				txt_result1.Text = "选中了：" + rbtn_2.Text;
			if (rbtn_3.Checked)
				txt_result1.Text = "选中了：" + rbtn_3.Text;
			if (rbtn_4.Checked)
				txt_result1.Text = "选中了：" + rbtn_4.Text;

		}

		protected void btn_submit2_Click(object sender, EventArgs e)
		{
			rbtn_5.Checked = rbtn_6.Checked = rbtn_7.Checked = rbtn_8.Checked = false;

			double d_num = -1.0;
			try
			{
				d_num = double.Parse(txt_num.Text);
			}
			catch (Exception)
			{

			}

			if (d_num >= 0 && d_num <= 120)
			{
				lab_1.Text = "";
				if (d_num >= 0.0 && d_num < 60.0)
					rbtn_5.Checked = true;
				else if (d_num >= 60.0 && d_num < 80.0)
					rbtn_6.Checked = true;
				else if (d_num >= 80.0 && d_num < 100.0)
					rbtn_7.Checked = true;
				else
					rbtn_8.Checked = true;
			}
			else
			{
				lab_1.Text = "请输入正确数字。";
			}

		}

		protected void btn_submit3_Click(object sender, EventArgs e)
		{
			txt_result2.Text = "";
			CheckBox chk;

			foreach (Control ctl in div_ch.Controls)
			{
				if (ctl is CheckBox)
				{
					chk = (CheckBox)ctl;
					if (chk.Checked)
						txt_result2.Text += chk.Text + ", ";
				}
			}

		}
	}
}