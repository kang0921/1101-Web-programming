using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab3
{
    public partial class evaluation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            drinkDetailsView.DataBind();
            drinkImage.ImageUrl = "./pic/尚未選取.jpg"; //初始顯示 未選取.jpg
        }

        protected void drinkList_SelectedIndexChanged(object sender, EventArgs e)
        {
            drinkImage.ImageUrl = "./pic/" + drinkList.SelectedItem.Text.ToString() + ".jpg";
            if (0 == drinkList.SelectedIndex)
            {
                drinkPriceLB.Text = "";
            }
            else
            {                
                drinkPriceLB.Text = drinkDetailsView.Rows[1].Cells[1].Text + " 元";
                drinkPriceLB.Visible = true;
            }
        }

        protected void submitBT_Click(object sender, EventArgs e)
        {
            bool success = true;
            if (0 == drinkList.SelectedIndex)
            {
                stateLB.Text = "請選擇欲評價商品";
                stateLB.Visible = true;
                success = false;
            }
            if (textTB.Text.Length == 0)
            {
                stateLB.Text = "心得內容為必填";
                stateLB.Visible = true;
                success = false;
            }
            if (starRBL.SelectedIndex == -1)
            {
                stateLB.Text = "星星數為必填";
                stateLB.Visible = true;
                success = false;
            }
            if (nameTB.Text.Length == 0)
            {
                stateLB.Text = "暱稱為必填";
                stateLB.Visible = true;
                success = false;
            }
            if (success)
            {
                evalDataSource.Insert();
                stateLB.Text = "已提交!感謝您的評價!";
                stateLB.Visible = true;
                drinkImage.ImageUrl = "./pic/" + drinkList.SelectedItem.Text.ToString() + ".jpg";
            }
        }

        protected void starRBL_SelectedIndexChanged(object sender, EventArgs e)
        {
            drinkImage.ImageUrl = "./pic/" + drinkList.SelectedItem.Text.ToString() + ".jpg";
        }
    }
}