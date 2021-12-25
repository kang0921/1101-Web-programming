using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab3
{
    public partial class signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            userGridView.DataBind();
        }

        protected void signupFinishBT_Click(object sender, EventArgs e)
        {
            bool success = true;

            if (addressTB.Text.Length == 0)
            {
                success = false;
                ErrorLB.Text = "未設定地址";
                ErrorLB.Visible = true;
            }

            if (phoneTB.Text.Length == 0)
            {
                success = false;
                ErrorLB.Text = "未設定電話";
                ErrorLB.Visible = true;
            }

            if (signupPasswordTB.Text.Length == 0)
            {
                success = false;
                ErrorLB.Text = "未設定密碼";
                ErrorLB.Visible = true;
            }

            if (signupPasswordTB.Text != checkPasswordTB.Text)
            {
                success = false;
                ErrorLB.Text = "密碼與確認密碼不相符";
                ErrorLB.Visible = true;
            }    

            for (int i = 0; i < userGridView.Rows.Count; ++i)
            {
                if (signupNameTB.Text == userGridView.Rows[i].Cells[0].Text)
                {
                    success = false;
                    ErrorLB.Text = "帳號名稱已被註冊";
                    ErrorLB.Visible = true;
                }
            }
            if (success)
            {

                ErrorLB.Text = "成功完成註冊";
                ErrorLB.Visible = true;
                userSignupDataSource.Insert();
            }
            
        }
    }
}