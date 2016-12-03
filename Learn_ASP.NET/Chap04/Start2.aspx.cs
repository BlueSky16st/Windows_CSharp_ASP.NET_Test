using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chap04
{
	public partial class Start2 : System.Web.UI.Page
	{
		/*
		 * 页面事件执行的顺序
		 * 
		 * 1.PerInit
		 * 2.Init
		 * 3.InitComplete
		 * 4.PerLoad
		 * 5.Page.Load
		 * 6.控件load
		 * 7.控件事件（提交按钮的处理总排在同类控件事件之后，其它控件的执行顺序按控件的页面排列顺序从上到下执行事件）
		 * 8....
		 * 9.Render[]
		 * 10.Page.Upload
		 * 
		 */
		
		int i = 1;
		
		protected void Page_Load(object sender, EventArgs e)
		{
			tb_2.Text = "";

			tb_2.Text += i++.ToString() + ": PageLoad\n";

		}

		protected void btn_1_Click(object sender, EventArgs e)
		{
			tb_2.Text += i++.ToString() + ": ButtonClick\n";

		}

		protected void tb_1_TextChanged(object sender, EventArgs e)
		{
			tb_2.Text += i++.ToString() + ": TextChanged\n";

		}

		protected void ddl_1_SelectedIndexChanged(object sender, EventArgs e)
		{
			tb_2.Text += i++.ToString() + ": SelectedIndexChanged\n";


		}
	}
}