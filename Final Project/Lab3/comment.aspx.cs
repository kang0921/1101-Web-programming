using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab3
{
    public partial class Comment : System.Web.UI.Page
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
    }
}