using System;

namespace HW1001
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            clientDetailsView.DataBind(); // 網頁在載入時就幫忙做資料綁定
        }

        protected void TextBox_account_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox_password_TextChanged(object sender, EventArgs e)
        {

        }

        protected void LinkButton_entry_Click(object sender, EventArgs e)
        {

        }

        // 登入事件
        protected void Button_login_Click(object sender, EventArgs e)
        {
            clientDetailsView.Visible = false; // 隱藏
            LinkButton_entry.Visible = false; // 隱藏
            //判斷是否有抓到資料
            if (1 == clientDetailsView.DataItemCount)
            {
                // 儲存工作狀態
                Session["name"] = clientDetailsView.Rows[0].Cells[0].Text;
                Session["money"] = clientDetailsView.Rows[1].Cells[0].Text;
                LinkButton_entry.Visible = true; // 顯示
            }
            else
            {
                Session["name"] = null;
                Session["money"] = null;
                clientDetailsView.Visible = true; // 顯示
            }

        }

        protected void clientDetailsView_PageIndexChanging(object sender, System.Web.UI.WebControls.DetailsViewPageEventArgs e)
        {

        }
    }
}