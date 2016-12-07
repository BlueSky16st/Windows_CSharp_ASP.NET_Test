using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chap05
{
	public partial class Start10_3 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			if (Application["chat"] == null)
			{
				Application["chat"] = new Panel();
			}

			holder.Controls.Add((Panel)Application["chat"]);

		}
	}
}