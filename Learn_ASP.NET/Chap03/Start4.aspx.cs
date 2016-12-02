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
	}
}