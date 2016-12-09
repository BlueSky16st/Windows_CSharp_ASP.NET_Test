using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace Chap06
{
	public partial class Start5_master : System.Web.UI.MasterPage
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			Panel pnl_item;
			Label lab_file;
			HyperLink hlink_allText;
			HyperLink hlink_line;

			string[] arrFile = Directory.GetFiles(MapPath("txtFile"), "*.txt");
			foreach (string str in arrFile)
			{
				lab_file = new Label();
				lab_file.Text = Path.GetFileName(str);

				hlink_allText = new HyperLink();
				hlink_allText.Text = "全部读取";
				hlink_allText.NavigateUrl = "Start5_readalltext.aspx?fname=" + lab_file.Text;

				hlink_line = new HyperLink();
				hlink_line.Text = "按行读取";
				hlink_line.NavigateUrl = "Start5_readallline.aspx?fname=" + lab_file.Text;

				pnl_item = new Panel();
				pnl_item.Controls.Add(lab_file);
				pnl_item.Controls.Add(hlink_allText);
				pnl_item.Controls.Add(hlink_line);

				div_right.Controls.Add(pnl_item);
			}


		}
	}
}