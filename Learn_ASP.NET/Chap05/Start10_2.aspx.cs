using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chap05
{
	public partial class Start10_2 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			if(Session["uid"] == null)
			{
				Response.Redirect("Start10_1.aspx");
			}


		}

		protected void btn_1_Click(object sender, EventArgs e)
		{
			Label uid = new Label();
			uid.Text = "[" + Session["uid"].ToString() + "]";

			Label date = new Label();
			date.Text = "[" + DateTime.Now.ToLongTimeString() + "] ";

			Label word = new Label();
			word.Style.Add("color", ddl_color.SelectedValue);
			word.Text = tb_1.Text;

			Literal lt = new Literal();
			lt.Text = "<br />";

			Application.Lock();
			Panel pnl = (Panel)Application["chat"];
			pnl.Controls.AddAt(0, lt);
			pnl.Controls.AddAt(0, word);
			pnl.Controls.AddAt(0, date);
			pnl.Controls.AddAt(0, uid);
			Application.UnLock();
			
		}

		protected void btn_2_Click(object sender, EventArgs e)
		{
			Session.Remove("uid");
			Response.Redirect("Start10_1.aspx");

		}

	}
}