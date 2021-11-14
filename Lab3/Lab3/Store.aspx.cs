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
            if (!IsPostBack) //判斷是否為第一次載入
            {
                // 價錢、庫存文字設定
                drinkPrice_LB.Text = "";
                drinkQt_LB.Text = "";

                drinkImage.ImageUrl = "./pic/尚未選取.jpg"; //初始顯示 未選取.jpg

                //設定件數
                for (int i = 0; i<50; i++)
                {
                    cupList.Items.Insert(i, new ListItem("" + (i + 1), "" + (i + 1))); 
                    //第一項是項目的編號，第二項是清單內的字串，第三項是選項內的值
                }
                cupList.SelectedIndex = 0; //初始化設定
            }
            
        }

        protected void drinkList_SelectedIndexChanged(object sender, EventArgs e)
        {
            //下拉式選單點選完，顯示相對應的圖片
            drinkImage.ImageUrl = "./pic/" + drinkList.SelectedItem.Text.ToString() + ".jpg";

            //下拉式選單點選完，顯示庫存、價格
            if (0 == drinkList.SelectedIndex)
            {
                drinkPrice_LB.Text = "";
                drinkQt_LB.Text = "";
                addItemBT.Enabled = false;
            }
            else
            {
                drinkPrice_LB.Text = "每份" + drinkDetailsView.Rows[0].Cells[1].Text + " 元";
                drinkQt_LB.Text = "\t庫存" + drinkDetailsView.Rows[1].Cells[1].Text;
                addItemBT.Enabled = true;
            }
        }

        /*重製按鈕*/
        protected void turncat_BT_Click(object sender, EventArgs e)
        {
            SqlConnection orderCon = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\clientData.mdf;Integrated Security=True");
            orderCon.Open();// 開啟資料庫連結
            /*宣告SQL指令物件，string 代表 : 讓他選擇編號最大的訂單*/
            SqlCommand truncateTableTruncateCmd = new SqlCommand("truncate table orderTable", orderCon);
            truncateTableTruncateCmd.ExecuteNonQuery();
            SqlCommand orderItemTableTruncateCmd = new SqlCommand("truncate table orderItemTable", orderCon);
            orderItemTableTruncateCmd.ExecuteNonQuery();

            order_BT.Text = "前往訂購";
            order_BT.Enabled = true;

            cupLB.Visible = false;
            cupList.Visible = false;
            sweetList.Visible = false;
            iceList.Visible = false;
            addItemBT.Visible = false;
            orderItemGridView.Visible = false;
        }

        // 前往訂購
        protected void order_BT_Click(object sender, EventArgs e)
        {
            drinkDataSelect.Insert();

            /*連結資料庫*//*string 在 Web.config 中*/
            SqlConnection orderCon = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\clientData.mdf;Integrated Security=True");
            orderCon.Open();// 開啟資料庫連結

            /*宣告SQL指令物件，string 代表 : 讓他選擇編號最大的訂單*/
            SqlCommand orderCmd = new SqlCommand("select top 1 order_id from[orderTable] order by order_id Desc", orderCon);
            SqlDataReader orderDr; //宣告讀取物件(閱讀器)
            orderDr = orderCmd.ExecuteReader(); // 把第51行的指令丟到 讀取物件中

            if (orderDr.Read()) //如果閱讀
            {
                Session["order_id"] = orderDr["order_id"]; //抓出 訂單編號
                order_BT.Text = orderDr["order_id"] + " 號訂單";
                order_BT.Enabled = false; // 完成此訂單前不能再 新增訂單

                cupLB.Visible = true;
                cupList.Visible = true;
                sweetList.Visible = true;
                iceList.Visible = true;
                addItemBT.Visible = true;

            }
            orderDr.Close();
        }

        protected void cupList_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void addItemBT_Click(object sender, EventArgs e)
        {
            orderItemDataSource.Insert();
            if (!orderItemGridView.Visible)
            {
                orderItemGridView.Visible = true;
            }
        }
    }
}