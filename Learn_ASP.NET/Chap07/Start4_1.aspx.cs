﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chap07
{
	public partial class Start4_1 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void BulletedList1_Click(object sender, BulletedListEventArgs e)
		{
			Session["CID"] = BulletedList1.Items[e.Index].Value;
			Response.Redirect("Start4_2.aspx");

		}
	}
}