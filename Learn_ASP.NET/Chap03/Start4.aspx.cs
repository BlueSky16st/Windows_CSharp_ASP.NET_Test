using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chap03
{
	public partial class Start4 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
		{
			BulletedList1.CssClass = "style1";
			BulletedList1.DisplayMode = BulletedListDisplayMode.Text;
		}

		protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
		{
			BulletedList1.CssClass = "style2";
			BulletedList1.DisplayMode = BulletedListDisplayMode.Text;
		}

		protected void RadioButton3_CheckedChanged(object sender, EventArgs e)
		{
			BulletedList1.CssClass = "style3";
			BulletedList1.DisplayMode = BulletedListDisplayMode.HyperLink;
		}

		protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
		{
			txt_1.Text = DropDownList1.SelectedValue;
			txt_1.Text += DropDownList1.SelectedItem.Text;

		}

		protected void btn_1_Click(object sender, EventArgs e)
		{
			DropDownList1.SelectedItem.Selected = false;
			DropDownList1.Items[2].Selected = true;
		}

		protected void btn_2_Click(object sender, EventArgs e)
		{
			DropDownList1.Items.Clear();
		}

		protected void btn_3_Click(object sender, EventArgs e)
		{
			Response.Redirect(DropDownList2.SelectedValue);

		}

		protected void btn_4_Click(object sender, EventArgs e)
		{
			DropDownList2.Items[0].Text = "新浪";
			DropDownList2.Items[0].Value = "http://www.sina.com.cn/";

		}

		protected void btn_5_Click(object sender, EventArgs e)
		{
			ListItem lt = new ListItem("知乎", "https://www.zhihu.com/");
			DropDownList2.Items.Add(lt);

		}

		protected void btn_6_Click(object sender, EventArgs e)
		{
			DropDownList ddl = new DropDownList();
			ddl = DropDownList2;

			Panel1.Controls.Add(ddl);

		}
	}
}