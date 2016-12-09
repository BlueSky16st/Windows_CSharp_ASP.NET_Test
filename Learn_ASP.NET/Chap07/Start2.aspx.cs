using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chap07
{
	public partial class Start2 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void btn_1_Click(object sender, EventArgs e)
		{
			SqlDataSource1.SelectCommand = "SELECT * FROM [课程信息] where [学分]<70";

		}
	}
}