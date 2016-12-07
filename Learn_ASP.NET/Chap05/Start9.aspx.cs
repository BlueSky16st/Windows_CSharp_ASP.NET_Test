using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chap05
{
	public partial class Start9 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void btn_1_Click(object sender, EventArgs e)
		{
			if(Application["count"] == null)
			{
				Application["count"] = 1;
			}
			else
			{
				Application.Lock();
				Application["count"] = (int)Application["count"] + 1;
				Application.UnLock();
			}

		}

		protected void btn_2_Click(object sender, EventArgs e)
		{
			if(Application["count"] != null)
			{
				Application.Lock();
				Application.Remove("count");
				Application.UnLock();
			}

		}

		protected void btn_3_Click(object sender, EventArgs e)
		{
			if(Application["count"] != null)
			{
				btn_3.Text = Application["count"].ToString();
			}
			else
			{
				btn_3.Text = "没有计数";
			}

		}
	}
}