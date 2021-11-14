using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Lab3
{
    public partial class Store : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            drinkDetailsView.DataBind();
            userShow_LB.Text = Session["name"] + "歡迎光臨<br>您還剩下 " + Session["money"] + " 元";
            if (!IsPostBack)
            {
                drinkPrice_LB.Text = "";
                drinkQt_LB.Text = "";
                drinkImage.ImageUrl = "./pic/尚未選取.jpg";
            }
            
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

        protected void turncat_BT_Click(object sender, EventArgs e)
        {
            SqlConnection orderCon = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\clientData.mdf;Integrated Security=True");
            orderCon.Open();

            SqlCommand truncateTableBTCmd = new SqlCommand("truncate table orderTable", orderCon);
            truncateTableBTCmd.ExecuteNonQuery();
            order_BT.Text = "前往訂購";
        }

        protected void order_BT_Click(object sender, EventArgs e)
        {
            drinkDataSelect.Insert();

            SqlConnection orderCon = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\clientData.mdf;Integrated Security=True");
            orderCon.Open();
            SqlCommand orderCmd = new SqlCommand("select top 1 order_id from[orderTable] order by order_id Desc", orderCon);
            SqlDataReader orderDr;
            orderDr = orderCmd.ExecuteReader();

            if (orderDr.Read())
            {
                Session["order_id"] = orderDr["order_id"];
                order_BT.Text = orderDr["order_id"] + " 號訂單";
                // order_BT.Enabled = false;
            }
            orderDr.Close();
        }
    }
}