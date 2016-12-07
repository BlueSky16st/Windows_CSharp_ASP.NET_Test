using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chap05
{
	public partial class Start3_1 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void btn_1_Click(object sender, EventArgs e)
		{
			HttpCookie ck_person = new HttpCookie("person");
			ck_person.Value = "Hi!";
			ck_person.Expires = DateTime.Now.AddMinutes(1.0);
			Response.Cookies.Add(ck_person);

		}

		protected void btn_2_Click(object sender, EventArgs e)
		{
			if(Response.Cookies["person"] != null)
				Response.Cookies["person"].Expires = DateTime.MinValue;

		}

		protected void btn_3_Click(object sender, EventArgs e)
		{
			HttpCookie ck = new HttpCookie("multi_cookie");

			ck.Values.Add("name", HttpUtility.UrlEncode("张三"));
			ck.Values.Add("age", "18");
			ck.Values.Add("sex", HttpUtility.UrlEncode("男"));

			ck.Expires = DateTime.Now.AddMinutes(1.0);

			Response.Cookies.Add(ck);

		}

		protected void btn_4_Click(object sender, EventArgs e)
		{
			if (tb_1.Text == "")
				return;

			HttpCookie ck = Request.Cookies["multi_cookie"];
			ck.Values.Set("name", HttpUtility.UrlEncode(tb_1.Text));

			ck.Expires = DateTime.Now.AddMinutes(1.0);

			Response.Cookies.Add(ck);

		}

		protected void btn_5_Click(object sender, EventArgs e)
		{
			HttpCookie ck = Request.Cookies["multi_cookie"];
			ck.Values.Remove("age");

			ck.Expires = DateTime.Now.AddMinutes(1.0);

			Response.Cookies.Add(ck);

		}

		protected void btn_6_Click(object sender, EventArgs e)
		{
			HttpCookie ck = Request.Cookies["multi_cookie"];
			ck.Values.Clear();

			ck.Expires = DateTime.Now.AddMinutes(1.0);

			Response.Cookies.Add(ck);

		}

		protected void btn_7_Click(object sender, EventArgs e)
		{
			HttpCookie ck = new HttpCookie("CSS");

			string color = ddl_1.SelectedValue;
			string size = ddl_2.SelectedValue;

			ck.Values.Add("color", color);
			ck.Values.Add("size", size);

			ck.Expires = DateTime.Now.AddMinutes(20);

			Response.Cookies.Add(ck);

		}
	}
}