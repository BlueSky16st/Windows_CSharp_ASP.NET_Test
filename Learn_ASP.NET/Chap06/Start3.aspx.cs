using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chap06
{
	public partial class Start3 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void Button1_Click(object sender, EventArgs e)
		{
			result.Items.Clear();
			//int x1, x2, x3, x4, x5;
			int[] x = new int[9];
			ListItem item;

			for (x[1] = 0; x[1] < 8; x[1]++)
			{
				for (x[2] = 0; x[2] < 8; x[2]++)
				{
					for (x[3] = 0; x[3] < 8; x[3]++)
					{
						for (x[4] = 0; x[4] < 8; x[4]++)
						{
							for (x[5] = 0; x[5] < 8; x[5]++)
							{
								for (x[6] = 0; x[6] < 8; x[6]++)
								{
									for (x[7] = 0; x[7] < 8; x[7]++)
									{
										for (x[8] = 0; x[8] < 8; x[8]++)
										{
											/*
											if (x1 == x2 || Math.Abs(x1 - x2) == 2 - 1)
												continue;
											if (x1 == x3 || Math.Abs(x1 - x3) == 3 - 1)
												continue;
											if (x1 == x4 || Math.Abs(x1 - x4) == 4 - 1)
												continue;
											if (x1 == x5 || Math.Abs(x1 - x5) == 5 - 1)
												continue;

											if (x2 == x3 || Math.Abs(x2 - x3) == 3 - 2)
												continue;
											if (x2 == x4 || Math.Abs(x2 - x4) == 4 - 2)
												continue;
											if (x2 == x5 || Math.Abs(x2 - x5) == 5 - 2)
												continue;

											if (x3 == x4 || Math.Abs(x3 - x4) == 4 - 3)
												continue;
											if (x3 == x5 || Math.Abs(x3 - x5) == 5 - 3)
												continue;

											if (x4 == x5 || Math.Abs(x4 - x5) == 5 - 4)
												continue;
											*/

											bool flag = true;
											for (int m = 1; m <= 7; m++)
											{
												for (int n = m + 1; n <= 8; n++)
												{
													if (x[m] == x[n] || Math.Abs(x[m] - x[n]) == n - m)
													{
														flag = false;
														break;
													}
												}
												if (!flag)
													break;
											}

											if (flag)
											{
												item = new ListItem();
												item.Text = "";
												for (int i = 1; i <= 8; i++)
												{
													item.Text += x[i].ToString();
												}
												//item.Text = x[1].ToString() + x[2].ToString() + x[3].ToString() + x[4].ToString() + x[5].ToString();
												result.Items.Add(item);
											}
										}
									}
								}
							}
						}
					}
				}
			}
			
		}

		protected void result_SelectedIndexChanged(object sender, EventArgs e)
		{
			Table tb;
			TableRow row;
			TableCell cell;

			string str = result.Text;
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

					if (c.ToString() == arr[r].ToString())
					{
						cell.CssClass += " queen";
					}

					row.Cells.Add(cell);
				}
				tb.Rows.Add(row);
			}
			div_right.Controls.Add(tb);

		}
	}
}