using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chap05
{
	public partial class Start4_2 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			if (IsPostBack)
				return;

			string name = Request.QueryString["name"];
			if (name == null)
				name = "";
			lb_1.Text = "欢迎你！" + name;

			string viewCss = "listView";
			string bgCss = "white";

			if (Request.Cookies[name] != null)
			{
				HttpCookie ck = Request.Cookies[name];
				viewCss = ck.Values["view"];
				bgCss = ck.Values["bg"];

			}

			ddl_1.SelectedValue = viewCss;
			ddl_2.SelectedValue = bgCss;
			foreach (Control ctl in panel_1.Controls)
			{
				if(ctl is Panel)
				{
					Panel panel = (Panel)ctl;
					panel.CssClass = viewCss;
					panel.Style.Add("background-color", bgCss);
				}
			}

		}

		protected void btn_1_Click(object sender, EventArgs e)
		{
			string name = Request.QueryString["name"];
			if(name == null)
				return;

			HttpCookie ck;
			if (Request.Cookies[name] == null)
			{
				ck = new HttpCookie(name);

				ck.Values.Add("view", ddl_1.SelectedValue);
				ck.Values.Add("bg", ddl_2.SelectedValue);
			}
			else
			{
				ck = Response.Cookies[name];

				ck.Values.Set("view", ddl_1.SelectedValue);
				ck.Values.Set("bg", ddl_2.SelectedValue);
			}
			ck.Expires = DateTime.Now.AddMinutes(5.0);

			Response.Cookies.Add(ck);

			foreach (Control ctl in panel_1.Controls)
			{
				if (ctl is Panel)
				{
					Panel panel = (Panel)ctl;
					panel.CssClass = ck.Values["view"];
					panel.Style.Add("background-color", ck.Values["bg"]);
				}
			}

		}

		protected void btn_2_Click(object sender, EventArgs e)
		{
			Response.Redirect("Start4_1.aspx");

		}
	}
}