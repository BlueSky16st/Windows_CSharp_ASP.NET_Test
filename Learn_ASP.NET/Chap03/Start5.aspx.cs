using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chap03
{
	public partial class Start5 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void btn_1_Click(object sender, EventArgs e)
		{
			tb_1.Text = "";

			/*
			for (int i = 0; i < lb_1.Items.Count; i++)
			{
				if (lb_1.Items[i].Selected)
					tb_1.Text += lb_1.Items[i].Value + ", ";
			}
			*/

			foreach (ListItem item in lb_1.Items)
			{
				if (item.Selected)
					tb_1.Text += item.Value + ", ";
			}

		}

		protected void btn_2_Click(object sender, EventArgs e)
		{
			/*
			// 错误
			foreach (ListItem item in lb_2.Items)
			{
				if (item.Selected)
					lb_2.Items.Remove(item);
			}
			*/

			/*
			for (int i = 0; i < lb_2.Items.Count; i++)
			{
				if (lb_2.Items[i].Selected)
				{
					lb_2.Items.Remove(lb_2.Items[i]);
					i--;
				}
			}
			*/

			for (int i = lb_2.Items.Count - 1; i >= 0; i--)
			{
				if (lb_2.Items[i].Selected)
					lb_2.Items.RemoveAt(i);
			}

		}

		protected void btn_3_Click(object sender, EventArgs e)
		{
			for (int i = lb_3.Items.Count - 1; i >= 0; i--)
			{
				if(lb_3.Items[i].Selected)
				{
					lb_4.Items.Add(lb_3.Items[i]);
					lb_3.Items.RemoveAt(i);
				}
			}

		}

		protected void btn_4_Click(object sender, EventArgs e)
		{
			for (int i = lb_4.Items.Count - 1; i >= 0; i--)
			{
				if(lb_4.Items[i].Selected)
				{
					lb_3.Items.Add(lb_4.Items[i]);
					lb_4.Items.RemoveAt(i);
				}
			}
		}

		protected void btn_5_Click(object sender, EventArgs e)
		{
			HyperLink hl = new HyperLink();
			hl.NavigateUrl = "https://www.baidu.com/";
			hl.Text = "百度";

			Panel1.Controls.Add(hl);

			hl = new HyperLink();
			hl.NavigateUrl = "https://www.taobao.com/";
			hl.Text = "淘宝";

		}

		protected void btn_6_Click(object sender, EventArgs e)
		{
			HyperLink hl = new HyperLink();
			hl.NavigateUrl = "https://www.baidu.com/";
			hl.Text = "百度";
			hl.ToolTip = "进入百度";
			hl.CssClass = "a1";

			Panel1.Controls.Add(hl);

		}

		protected void btn_7_Click(object sender, EventArgs e)
		{
			RectangleHotSpot rs = new RectangleHotSpot();
			rs.Left = 30;
			rs.Top = 60;
			rs.Right = 70;
			rs.Bottom = 100;
			rs.NavigateUrl = "http://www.163.com/";
			rs.AlternateText = "网易";

			ImageMap1.HotSpots.Add(rs);

		}
	}
}