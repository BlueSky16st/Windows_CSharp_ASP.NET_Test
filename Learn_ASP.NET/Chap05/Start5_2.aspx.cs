using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chap05
{
	public partial class Start5_2 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			string str_Info = "PreviousPage: ";
			str_Info += PreviousPage != null ? "true" : "false";
			str_Info += "<br />";
			str_Info += "IsCrossPagePostBack: ";

			if (PreviousPage != null)
			{
				str_Info += PreviousPage.IsCrossPagePostBack ? "true" : "false";

				if (PreviousPage.IsCrossPagePostBack)
				{
					TextBox tb = (TextBox)PreviousPage.FindControl("tb_1");
					lab_2.Text = tb.Text;

					Label lb = (Label)PreviousPage.FindControl("lab_1");
					lab_3.Text = lb.Text;

				}
			}
			else
			{
				str_Info += "false";
			}

			lab_1.Text = str_Info;

		}
	}
}
