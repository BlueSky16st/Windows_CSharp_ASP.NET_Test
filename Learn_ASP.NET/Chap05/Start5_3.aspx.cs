using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chap05
{
	public partial class Start5_3 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			if(PreviousPage != null)
			{
				if(PreviousPage.IsCrossPagePostBack)
				{
					ListBox lb = (ListBox)PreviousPage.FindControl("lb_1");

					tb_1.Text = "";
					foreach (ListItem item in lb.Items)
					{
						tb_1.Text += item.Value + "\n";
					}
					tb_1.Text += "选择的项是：" + lb.SelectedValue + "\n";

				}
			}

		}
	}
}