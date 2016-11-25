using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Test1
{
	public partial class Start3 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			Test1();

			Response.Write("<hr />");

			Test2();

			Response.Write("<hr />");

			Test3();
			
			Response.Write("<hr />");

			Test4();

			Response.Write("<hr />");

			Test5();

			Response.Write("<hr />");

			Test6();

			Response.Write("<hr />");

			Test7();

			Response.Write("<hr />");

			Test8();


		}


		private void Test1()
		{
			int a, b, c;
			double d;

			a = 11;
			b = 12;
			c = 13;

			d = a + b + c;

			Response.Write(d);
			
		}


		private void Test2()
		{
			int age = 23;
			double weight, height;

			weight = 65.3;
			height = 176.3;

			WriteContent(age, weight, height);

		}

		private void WriteContent(int age, double weight, double height)
		{
			string result;
			result = "年龄：" + age.ToString() + "岁<br />" +
				"身高：" + weight.ToString() + "cm <br />" +
				"体重：" + weight.ToString() + "kg";

			Response.Write(result);

		}


		private void Test3()
		{
			string name = "小王";
			short age = 16;
			double height = 176.5;
			float weight = 76.5f;
			bool outAgeLine;
			DateTime birthday;

			outAgeLine = age > 30;
			birthday = Convert.ToDateTime("1901-1-2");
			//birthday = DateTime.Now;	// 获取当前时间

			string result;
			result = name + "今年" + age.ToString() + "岁，<br />" +
				"身高是：" + height.ToString() + "cm, <br />" +
				"体重是：" + weight.ToString() + "kg, <br />" +
				"是否超过30岁：" + outAgeLine;

			Response.Write(result);

		}


		private void Test4()
		{
			string a = "33", b = "30";
			Response.Write("直接相加：" + (a + b));


			Response.Write("<br />");


			int c, d;
			c = Convert.ToInt16(a);
			d = Convert.ToInt16(b);
			Response.Write("转换后相加：" + (c + d).ToString());


			Response.Write("<br />");


			char e;
			e = Convert.ToChar(65);
			Response.Write(e);


			Response.Write("<br />");


			int start = 65;
			char f;
			for (int i = 0; i < 6; i++)
			{
				f = Convert.ToChar(start);
				Response.Write(f + " ");
				start++;
			}

		}


		private void Test5()
		{
			int[] a = new int[5];

			a[1] = 4;
			a[2] = 5;
			Response.Write("a[1]:" + a[1].ToString());
			Response.Write("<br />");
			Response.Write("a[3]:" + a[3].ToString());


			Response.Write("<br />");


			int[] b = new int[] { 1, 2, 3, 4, 5, 6, 7 };
			foreach (var item in b)
			{
				Response.Write(item.ToString() + " ");
			}

		}


		private void Test6()
		{
			int[] a;
			a = new int[3];

			double[] b;
			b = new double[4] { 6.6, 4.6, 7.9, 1.5 };

			string[] c = new string[4];
			c[0] = b[0].ToString();
			c[1] = b[1].ToString();
			c[2] = b[2].ToString();
			c[3] = b[3].ToString();

			Response.Write(c[0]);
			Response.Write("<br />");
			Response.Write(c[1]);
			Response.Write("<br />");
			Response.Write(c[2]);
			Response.Write("<br />");
			Response.Write(c[3]);
			Response.Write("<br />");

		}


		private void Test7()
		{
			string[] a = new string[3];

			Response.Write("未赋值的a[1]是否为空字符串？");
			Response.Write(a[1] == "");		// false
			Response.Write("<br />");

			Response.Write("未赋值的a[1]是否为null？");
			Response.Write(a[1] == null);	// true
			Response.Write("<br />");

			a[0] = "";
			Response.Write("赋值空字符串的a[0]的长度为：");
			Response.Write(a[0].Length);	// 0
			Response.Write("<br />");


			Response.Write("<br />");


			char[] b = new char[3];
			b[0] = 'B';

			Response.Write("b[0]=B对应的ASCII码：");
			Response.Write(Convert.ToInt16(b[0]));	// 66
			Response.Write("<br />");

			Response.Write("未赋值的b[1]对应的ASCII码：");
			Response.Write(Convert.ToInt16(b[1]));	// 0
			Response.Write("<br />");

			Response.Write("未赋值的b[2]是否为null？");
			Response.Write(b[2] == null);	// false
			Response.Write("<br />");


			Response.Write("<br />");


			double[] c = new double[3];
			Response.Write("未赋值的c[0]的值为：");
			Response.Write(c[0]);	// 0
			Response.Write("<br />");


			Response.Write("<br />");


			bool[] d = new bool[3];
			Response.Write("未赋值的d[0]的值为：");
			Response.Write(d[0]);	// false
			Response.Write("<br />");


			Response.Write("<br />");


			DateTime[] e = new DateTime[3];
			Response.Write("未赋值的e[0]的值为：");
			Response.Write(e[0]);	// 公元1年1月1日 0点0分0秒
			Response.Write("<br />");


			Response.Write("<br />");

		}
		

		private void Test8()
		{
			char[] a;
			a = "hello world".ToCharArray();

			Response.Write(a.Length);
			Response.Write("<br />");
			
			a[1] = Convert.ToChar(Convert.ToInt16(a[1]) + 4);
			Response.Write(a[1]);

		}



	}
}