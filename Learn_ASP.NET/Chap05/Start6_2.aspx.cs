using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chap05
{
	public partial class Start6_2 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			if(PreviousPage != null)
			{
				if(PreviousPage.IsCrossPagePostBack)
				{
					TextBox tb = (TextBox)PreviousPage.FindControl("tital");
					lab_tital.Text = tb.Text;

					Calendar cal = (Calendar)PreviousPage.FindControl("cal");
					lab_cal.Text = cal.SelectedDate.ToLongDateString();

					ListBox lb = (ListBox)PreviousPage.FindControl("member");
					lab_member.Text = "";
					foreach (ListItem item in lb.Items)
					{
						if(item.Selected)
							lab_member.Text += item.Value + " ";
					}

				}
			}

		}
	}
}