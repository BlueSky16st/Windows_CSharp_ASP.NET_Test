using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chap06
{
	public partial class Start2 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void Button1_Click(object sender, EventArgs e)
		{
			Table tb;
			TableRow row;
			TableCell cell;

			string str = "25160374";
			char[] arr = str.ToCharArray();

			tb = new Table();
			for (int r = 0; r < 8; r++)
			{
				row = new TableRow();
				for (int c = 0; c < 8; c++)
				{
					cell = new TableCell();

					if ((r + c) % 2 == 1)
					{
						cell.CssClass = "bgColor";
						//cell.BackColor = System.Drawing.Color.Black;
					}

					if(c.ToString() == arr[r].ToString())
					{
						cell.CssClass += " queen";
					}

					row.Cells.Add(cell);
				}
				tb.Rows.Add(row);
			}
			holder_table.Controls.Add(tb);

		}
	}
}