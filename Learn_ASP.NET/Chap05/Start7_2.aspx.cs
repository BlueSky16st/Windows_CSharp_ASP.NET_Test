using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chap05
{
	public partial class Start7_2 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			tb_1.Text = Session["s_txt"] == null ? "session为空" : Session["s_txt"].ToString();


			tb_2.Text = "";
			if (Session["s_arr"] != null)
			{
				string[] strarr = (string[])Session["s_sarr"];
				foreach (string str in strarr)
				{
					tb_2.Text += str + " ";
				}
			}

			if(Session["s_cal"] != null)
			{
				Calendar cal = (Calendar)Session["s_cal"];
				pal_1.Controls.Add(cal);
			}


			lb_1.Text = "";
			foreach (string key in Session.Keys)
			{
				lb_1.Text += key + ": " + Session[key].GetType().ToString();
			}


			lb_2.Text = Session.SessionID;

			lb_3.Text = Session.Timeout.ToString();


		}

		protected void btn_1_Click(object sender, EventArgs e)
		{
			Session.Abandon();
			Response.Redirect(Request.Url.LocalPath.ToString());

		}

		protected void btn_2_Click(object sender, EventArgs e)
		{
			Session.Remove("s_txt");
			Response.Redirect(Request.Url.LocalPath.ToString());

		}
	}
}