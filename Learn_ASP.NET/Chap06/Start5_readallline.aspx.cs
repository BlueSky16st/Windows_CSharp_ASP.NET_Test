using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace Chap06
{
	public partial class Start5_readallline : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			string path = getPath();
			string[] content = File.ReadAllLines(path);

			TextBox tb;
			foreach (string str in content)
			{
				tb = new TextBox();
				tb.Text = str;

				txt_holder.Controls.Add(tb);
			}

		}

		private string getPath()
		{
			string path = "";

			if(Request.QueryString["fname"] == null)
				Response.Redirect("Start5_default.aspx");

			path = Path.Combine(MapPath("txtFile"), Request.QueryString["fname"]);
			if (!File.Exists(path))
				Response.Redirect("Start5_default.aspx");

			return path;

		}

		protected void btn_save_Click(object sender, EventArgs e)
		{
			string content = "";
			string path = Path.Combine(MapPath("txtFile"), Request.QueryString["fname"]);

			foreach (Control ctl in txt_holder.Controls)
			{
				if(ctl is TextBox)
				{
					TextBox tb = (TextBox)ctl;
					content += tb.Text + '\u0081';
				}
			}
			content = content.Substring(0, content.Length - 1);
			string[] strArr = content.Split('\u0081');
			File.WriteAllLines(path, strArr);

		}
	}
}