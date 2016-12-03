using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chap04
{
	public partial class Start3 : System.Web.UI.Page
	{
		static string food = "";

		protected void Page_Load(object sender, EventArgs e)
		{
			int n = 0;
			try
			{
				n = int.Parse(tb_1.Text);
			}
			catch (Exception)
			{
			}

			TextBox tb;
			for (int i = 0; i < n; i++)
			{
				tb = new TextBox();
				tb.Text = (i + 1).ToString();

				panel_1.Controls.Add(tb);
			}
			

			CheckBox cb;
			string[] strList = food.Split(new char[] { '|' }, StringSplitOptions.RemoveEmptyEntries);
			foreach (string str in strList)
			{
				cb = new CheckBox();
				cb.Text = str;

				panel_2.Controls.Add(cb);
			}

		}

		protected void btn_2_Click(object sender, EventArgs e)
		{
			double res = 0.0;

			foreach (Control ctl in panel_1.Controls)
			{
				if(ctl is TextBox)
				{
					try
					{
						res += Convert.ToDouble(((TextBox)ctl).Text);
					}
					catch (Exception)
					{
					}
				}
			}

			btn_2.Text = res.ToString();

		}
		protected void btn_3_Click(object sender, EventArgs e)
		{
			ListItem item = new ListItem(tb_2.Text, tb_2.Text);

			lb_1.Items.Add(item);

		}

		protected void btn_4_Click(object sender, EventArgs e)
		{
			food += tb_2.Text + "|";

			CheckBox cb = new CheckBox();
			cb.Text = tb_2.Text;
			panel_2.Controls.Add(cb);

		}

		protected void btn_5_Click(object sender, EventArgs e)
		{
			string res = lb_1.SelectedValue + "喜欢的食物是：";

			foreach (Control ctl in panel_2.Controls)
			{
				if(ctl is CheckBox)
				{
					if(((CheckBox)ctl).Checked)
					{
						res += ((CheckBox)ctl).Text + ",";
					}
				}
			}

			tb_3.Text = res;

		}

	}
}