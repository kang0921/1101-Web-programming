using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab3
{
    public partial class cash : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            cashDetailsView.DataBind();
            errorMsgLB.Visible = false;
        }

        protected void login_Button_Click(object sender, EventArgs e)
        {
            
            if (1 == cashDetailsView.DataItemCount && cashNumTB.Text!=null)
            {
                Session["cashID"] = cashDetailsView.Rows[0].Cells[1].Text;
                Session["cashMoney"] = (Convert.ToInt32(cashDetailsView.Rows[1].Cells[1].Text)) + (Convert.ToInt32(cashNumTB.Text));
                cashDataSource.Update();
                cashDetailsView.Visible = true;
            }
            else
            {
                Session["cashID"] = null;
                Session["cashMoney"] = null;
                errorMsgLB.Text = "查無此帳號，請至註冊頁面加入會員，謝謝!";
                errorMsgLB.Visible = true;
            }
        }

        protected void trackBT_Click(object sender, EventArgs e)
        {
            if (1 == cashDetailsView.DataItemCount)
            {
                Session["cashID"] = cashDetailsView.Rows[0].Cells[1].Text;
                Session["cashMoney"] = cashDetailsView.Rows[1].Cells[1].Text;
                cashDetailsView.Visible = true;
            }
            else
            {
                Session["cashID"] = null;
                Session["cashMoney"] = null;
                errorMsgLB.Text = "查無此帳號，請至註冊頁面加入會員，謝謝!";
                errorMsgLB.Visible = true;
            }
        }
    }
}