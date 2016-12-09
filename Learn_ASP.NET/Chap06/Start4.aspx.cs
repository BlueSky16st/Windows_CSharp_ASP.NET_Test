using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace Chap06
{
	public partial class Start4 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			if (IsPostBack)
				return;

			// 遍历文件夹

			string[] dirStr = Directory.GetFiles(MapPath("txtFile"), "*.txt");
			//Response.Write(dirStr.Length);

			ListItem li;
			foreach (string str in dirStr)
			{
				li = new ListItem();

				string file;

				file= Path.GetFileName(str);	// 获取文件名，带扩展名
				//file = Path.GetFileNameWithoutExtension(str);	// 获取文件名，不带扩展名

				li.Text = file;
				ddl_file.Items.Add(li);

				//Response.Write(str + "<br />");
				//Response.Write(file + "<br />");
			}

		}

		protected void btn_1_Click(object sender, EventArgs e)
		{
			string file = ddl_file.SelectedValue;
			string path = Path.Combine(MapPath("txtFile"), file);	// 将字符串组合成一条路径
			//tb_1.Text = path;

			if(File.Exists(path))
			{
				tb_1.Text = File.ReadAllText(path);
			}

		}

		protected void btn_2_Click1(object sender, EventArgs e)
		{
			string file = ddl_file.SelectedValue;
			string path = Path.Combine(MapPath("txtFile"), file);

			if(File.Exists(path))
			{
				string[] content = File.ReadAllLines(path);

				TextBox tb;
				foreach (string str in content)
				{
					tb = new TextBox();
					tb.Text = str;
					txt_holder.Controls.Add(tb);
				}

			}

		}

		protected void btn_3_Click(object sender, EventArgs e)
		{
			string file = ddl_file.SelectedValue;
			string path = Path.Combine(MapPath("txtFile"), file);
			string content = tb_1.Text;

			File.WriteAllText(path, content);

		}

	}
}