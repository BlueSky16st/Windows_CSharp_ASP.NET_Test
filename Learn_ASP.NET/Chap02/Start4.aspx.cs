using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chap02
{
	public partial class Start4 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{



		}

		protected void Button1_Click(object sender, EventArgs e)
		{
			if (6 > 3)
				Response.Write("是");
			else
				Response.Write("否");

		}

		protected void btn_submit_Click(object sender, EventArgs e)
		{
			double d_fen = double.Parse(txt_fen.Text);

			if (d_fen > 0 && d_fen <= 120)
			{
				lab_result.Text = "正确";
				lab_result.ForeColor = System.Drawing.Color.Green;
			}
			else
			{
				lab_result.Text = "错误";
				lab_result.ForeColor = System.Drawing.Color.Red;
			}

		}

		protected void btn_submit2_Click(object sender, EventArgs e)
		{
			double d_fen = double.Parse(txt_fen2.Text);

			if (d_fen >= 0 && d_fen <= 120)
			{
				if (d_fen < 60)
					lab_result2.Text = "不及格";
				else if (d_fen < 80)
					lab_result2.Text = "及格";
				else if (d_fen < 100)
					lab_result2.Text = "良好";
				else
					lab_result2.Text = "优秀";

				lab_result2.ForeColor = System.Drawing.Color.Green;
			}
			else
			{
				lab_result2.Text = "错误";
				lab_result2.ForeColor = System.Drawing.Color.Red;
			}

		}

		protected void btn_submit3_Click(object sender, EventArgs e)
		{
			int i_start = int.Parse(txt_start.Text);
			int i_end = int.Parse(txt_end.Text);
			int i_sum = 0;

			while (i_start <= i_end)
			{
				i_sum += i_start++;
			}

			lab_sum.Text = i_sum.ToString();

		}

		protected void btn_submit4_Click(object sender, EventArgs e)
		{
			int num = int.Parse(txt_num.Text);
			int i = num;
			string result = "";

			do
			{
				if (num % i == 0)
					result += i + ", ";
			} while (--i > 0);

			lab_result3.Text = result;

		}

		protected void btn_submit5_Click(object sender, EventArgs e)
		{
			int num = int.Parse(txt_num2.Text);
			bool flag = true;

			for (int i = 2; i < num; i++)
			{
				if (num % i == 0)
				{
					flag = false;
					break;
				}
			}
			if (flag)
				lab_result4.Text = "是质数";
			else
				lab_result4.Text = "不是质数";

		}

		protected void btn_submit6_Click(object sender, EventArgs e)
		{
			int ge, shi, bai, count = 0;
			string result = "";

			for (int i = 100; i < 999; i++)
			{
				ge = i % 10;
				shi = i / 10 % 10;
				bai = i / 100;

				if (Math.Pow(ge, 3) + Math.Pow(shi, 3) + Math.Pow(bai, 3) == i)
				{
					result += i + ", ";
					count++;
				}

				if (count == 2)
					break;
			}

			lab_result5.Text = result;

		}

		protected void btn_submit7_Click(object sender, EventArgs e)
		{
			for (int i = 1000; i < 1100; i++)
			{
				if ((i % 3 == 2) && (i % 5 == 4) && (i % 7 == 6))
					lab_result6.Text = i.ToString();
			}

		}

		protected void btn_submit8_Click(object sender, EventArgs e)
		{
			int start = int.Parse(txt_start2.Text);
			int end = int.Parse(txt_end2.Text);

			string result = "";

			for (int i = start; i <= end; i++)
			{
				bool res = IsZhiShu(i);
				if (res)
					result += i + ", ";
			}

			lab_result7.Text = result;

		}

		private bool IsZhiShu(int num)
		{
			bool result = true;
			for (int i = num / 2; i >= 2; i--)
			{
				if (num % i == 0)
				{
					result = false;
					break;
				}
			}
			return result;

		}

		protected void btn_submit9_Click(object sender, EventArgs e)
		{
			int i = 3;
			switch (i)
			{
			case 1:
				Response.Write("1");
				break;

			case 2:
				Response.Write("2");
				break;

			case 3:
				Response.Write("3");
				break;

			default:
				break;
			}

		}
	}
}