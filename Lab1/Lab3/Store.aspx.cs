using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab3
{
    public partial class Store : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            drinkDetailsView.DataBind();
            userShow_LB.Text = Session["name"] + "歡迎光臨<br>您還剩下" + Session["money"] + "元";
            drinkPrice_LB.Text = "";
            drinkQt_LB.Text = "";
            drinkImage.ImageUrl = "./pic/未選取.jpg";
        }

        protected void drinkList_SelectedIndexChanged(object sender, EventArgs e)
        {
            drinkImage.ImageUrl = "./pic/" + drinkList.SelectedItem.Text.ToString() + ".jpg";
            if (0 == drinkList.SelectedIndex)
            {
                drinkPrice_LB.Text = "";
                drinkQt_LB.Text = "";
            }
            else
            {
                drinkPrice_LB.Text = "每份" + drinkDetailsView.Rows[0].Cells[1].Text + " 元";
                drinkQt_LB.Text = "\t庫存" + drinkDetailsView.Rows[1].Cells[1].Text;
            }
        }
    }
}