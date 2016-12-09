using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace Chap06
{
	public partial class Start5_readalltext : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			if (IsPostBack)
				return;

			if(Request.QueryString["fname"] != null)
			{
				string path = Path.Combine(MapPath("txtFile"), Request.QueryString["fname"]);
				if(File.Exists(path))
					txt_content.Text = File.ReadAllText(path);
				else
					Response.Redirect("Start5_default.aspx");

			}
			else
			{
				Response.Redirect("Start5_default.aspx");
			}

		}

		protected void btn_save_Click(object sender, EventArgs e)
		{
			string path = Path.Combine(MapPath("txtFile"), Request.QueryString["fname"]);

			File.WriteAllText(path, txt_content.Text);

		}
	}
}