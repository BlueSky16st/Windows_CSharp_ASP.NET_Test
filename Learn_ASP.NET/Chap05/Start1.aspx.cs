using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chap05
{
	public partial class Start1 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			if(tb_3.Text != "")
			{
				string[] strArr = tb_3.Text.Split(new char[] { '\u0081' }, 
					StringSplitOptions.RemoveEmptyEntries);
				foreach (string str in strArr)
					AddLink(str);
			}

			string name = tb_1.Text;
			string url = tb_2.Text;
			if (name != "" && url != "")
			{
				AddLink(name + "\u0080" + url + "\u0081");
				tb_1.Text = tb_2.Text = "";
				tb_3.Text += name + "\u0080" + url + "\u0081";
			}

		}

		protected void btn_1_Click(object sender, EventArgs e)
		{
			Response.Redirect("http://www.baidu.com/");

		}

		protected void btn_2_Click(object sender, EventArgs e)
		{
			Server.Transfer("Start1.aspx");

		}

		protected void AddLink(string nameUrl)
		{
			string[] link = nameUrl.Replace("\u0081", "").Split('\u0080');
			HyperLink hl = new HyperLink();
			hl.Text = link[0];
			hl.NavigateUrl = link[1];
			panel_1.Controls.Add(hl);

		}

	}
}
