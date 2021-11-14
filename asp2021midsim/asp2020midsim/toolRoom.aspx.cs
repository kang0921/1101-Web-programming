using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient; // 連結資料庫

namespace asp2020midsim
{
    public partial class toolRoom : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            toolDetailsView.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            toolDetailsView.Visible = false;
            /*判斷是否有抓到資料*/
            if (1 == toolDetailsView.DataItemCount)
            {
                /* 將 "階段工作狀態" 儲存*/
                Session["name"] = toolDetailsView.Rows[0].Cells[1].Text;
                /*將 "進入商店" 啟用(顯示回來)*/
                if (!inquireToolGridView.Visible)
                {
                    inquireToolGridView.Visible = true;
                }
            }
            else
            {   /*Case : 沒抓到資料 or 抓到2筆以上的資料*/

                /*將 "工作狀態" 設成 null*/
                Session["name"] = null;
                /*顯示 DetailView*/
                inquireToolGridView.Visible = true;
            }
        }

        protected void inquireToolTB_TextChanged(object sender, EventArgs e)
        {

        }
    }
}