using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chap05
{
	public partial class Start3_2 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void btn_1_Click(object sender, EventArgs e)
		{
			if (Request.Cookies["person"] != null)
			{
				string value = Request.Cookies["person"].Value;
				Response.Write(value);
			}

		}

		protected void btn_2_Click(object sender, EventArgs e)
		{
			if (Request.Cookies["multi_cookie"] != null)
			{
				HttpCookie ck = Request.Cookies["multi_cookie"];
				tb_1.Text = HttpUtility.UrlDecode(ck.Values["name"]) + ", "
					+ HttpUtility.UrlDecode(ck.Values["sex"]) + ", "
					+ ck.Values["age"];
			}

		}

		protected void btn_3_Click(object sender, EventArgs e)
		{
			if(Request.Cookies["CSS"] != null)
			{
				HttpCookie ck = Request.Cookies["CSS"];

				string color = ck.Values["color"];
				string size = ck.Values["size"];
				 
				lb_1.Style.Add("color", color);
				lb_1.Style.Add("font-size", size);

			}

		}

		protected void btn_4_Click(object sender, EventArgs e)
		{
			tb_2.Text = "";
			foreach (string key in Request.Cookies.AllKeys)
			{
				HttpCookie ck = Request.Cookies[key];
				foreach (string subkey in ck.Values.Keys)
					tb_2.Text += key + " " + subkey + ": " + ck.Values[subkey] + "\n";
			}

		}

		protected void btn_5_Click(object sender, EventArgs e)
		{
			foreach (string key in Request.Cookies.AllKeys)
			{
				HttpCookie ck = Response.Cookies[key];
				ck.Expires = DateTime.MinValue;
			}

		}
	}
}