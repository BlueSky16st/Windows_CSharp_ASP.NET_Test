using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chap03
{
	public partial class Start2 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void TextBox2_TextChanged(object sender, EventArgs e)
		{
			Response.Write(TextBox2.Text);

		}

		protected void TextBox1_TextChanged(object sender, EventArgs e)
		{
			Response.Write(TextBox1.Text);

		}

		protected void txt_pwd_TextChanged(object sender, EventArgs e)
		{
			if(txt_name.Text != "" && txt_pwd.Text == "123456")
				Panel1.Enabled = true;

		}

		protected void btn_submit_Click(object sender, EventArgs e)
		{
			char[] st = txt_org.Text.ToCharArray();
			txt_result.Text = "";

			foreach (char ch in st)
				txt_result.Text += ch + "\n";

		}
	}
}