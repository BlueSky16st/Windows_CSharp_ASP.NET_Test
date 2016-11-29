using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chap03
{
	public partial class Start1 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void Button1_Click(object sender, EventArgs e)
		{
			TextBox1.Text = DateTime.Now.ToLongDateString();
		}

		protected void Button2_Click(object sender, EventArgs e)
		{
			TextBox2.Value = DateTime.Now.ToString();
		}

		protected void Button3_Click(object sender, EventArgs e)
		{
			div_result.InnerText = txt1.Text;

		}

		protected void Button4_Click(object sender, EventArgs e)
		{
			div_result.InnerText = txt2.Text;

		}

		protected void Button5_Click(object sender, EventArgs e)
		{
			div_result.InnerText = txt3.Text;

		}

		protected void Button6_Click(object sender, EventArgs e)
		{
			div_result.InnerText = txt4.Value;

		}
	}
}