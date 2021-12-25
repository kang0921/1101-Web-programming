using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab3
{
    public partial class mailBox : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            mailBoxSqlDataSource.DataBind();
        }

        protected void submitBT_Click(object sender, EventArgs e)
        {
            bool success = true;

            if (textTB.Text.Length == 0)
            {
                stateLB.Text = "意見內容為必填";
                stateLB.Visible = true;
                success = false;
            }
            if (emailTB.Text.Length == 0)
            {
                stateLB.Text = "電子信箱為必填";
                stateLB.Visible = true;
                success = false;
            }
            if (nameTB.Text.Length == 0)
            {
                stateLB.Text = "名字為必填";
                stateLB.Visible = true;
                success = false;
            }

            if (success)
            {
                mailBoxSqlDataSource.Insert();
                stateLB.Text = "已提交!感謝您寶貴的建議!";
                stateLB.Visible = true;
            }
            
            
        }
    }
}