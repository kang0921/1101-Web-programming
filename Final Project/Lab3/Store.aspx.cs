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
                drinkPriceLB.Text = "";
                drinkQtLB.Text = "";

                drinkImage.ImageUrl = "./pic/尚未選取.jpg"; //初始顯示 未選取.jpg

                //設定件數
                for (int i = 0; i<50; i++)
                {
                    cupList.Items.Insert(i, new ListItem("" + (i + 1), "" + (i + 1))); 
                    //第一項是項目的編號，第二項是清單內的字串，第三項是選項內的值
                }
                drinkList.SelectedIndex = 0;
                cupList.SelectedIndex = 0;
                sweetList.SelectedIndex = 0;
                iceList.SelectedIndex = 0;
            }
            
        }

        private void initial()
        {
            drinkList.SelectedIndex = 0;
            cupList.SelectedIndex = 0;
            sweetList.SelectedIndex = 0;
            drinkPriceLB.Text = "";
            drinkQtLB.Text = "";

            drinkImage.ImageUrl = "./pic/尚未選取.jpg"; //初始顯示 未選取.jpg

            order_BT.Text = "前往訂購";
            order_BT.Enabled = true;

            cupLB.Visible = false;
            cupList.Visible = false;
            sweetList.Visible = false;
            iceList.Visible = false;
            addItemBT.Visible = false;
            addItemBT.Enabled = false;
            orderItemGridView.Visible = false;
            totalLB.Visible = false;
            checkBT.Visible = false;
            cancelBT.Visible = false;
            errorLB.Visible = false;
        }

        protected void drinkList_SelectedIndexChanged(object sender, EventArgs e)
        {
            //下拉式選單點選完，顯示相對應的圖片
            drinkImage.ImageUrl = "./pic/" + drinkList.SelectedItem.Text.ToString() + ".jpg";

            //下拉式選單點選完，顯示庫存、價格
            if (0 == drinkList.SelectedIndex)
            {
                drinkPriceLB.Text = "";
                drinkQtLB.Text = "";
                addItemBT.Enabled = false;
            }
            else
            {
                drinkPriceLB.Text = "每份" + drinkDetailsView.Rows[1].Cells[1].Text + "元";
                drinkQtLB.Text = "\t庫存" + drinkDetailsView.Rows[0].Cells[1].Text;
                addItemBT.Enabled = true;
                drinkPriceLB.ForeColor = System.Drawing.Color.Black;
                drinkQtLB.ForeColor = System.Drawing.Color.Black;

                if (Convert.ToInt32(Session["money"]) < Convert.ToInt32(drinkDetailsView.Rows[1].Cells[1].Text))
                {
                    drinkPriceLB.ForeColor = System.Drawing.Color.Red;
                    drinkPriceLB.Text += " 餘額不足";
                    addItemBT.Enabled = false;
                }
                if (Convert.ToInt32(drinkDetailsView.Rows[0].Cells[1].Text) <= 0)
                {
                    drinkQtLB.ForeColor = System.Drawing.Color.Red;
                    drinkQtLB.Text += " 庫存不足";
                    addItemBT.Enabled = false;
                }
            }
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

        // 重建表單按鈕
        protected void turncat_BT_Click(object sender, EventArgs e)
        {
            SqlConnection orderCon = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\clientData.mdf;Integrated Security=True");
            orderCon.Open();// 開啟資料庫連結
            /*宣告SQL指令物件，string 代表 : 讓他選擇編號最大的訂單*/
            SqlCommand truncateTableTruncateCmd = new SqlCommand("truncate table orderTable", orderCon);
            truncateTableTruncateCmd.ExecuteNonQuery();
            SqlCommand orderItemTableTruncateCmd = new SqlCommand("truncate table orderItemTable", orderCon);
            orderItemTableTruncateCmd.ExecuteNonQuery();
            initial();
        }

        protected void addItemBT_Click(object sender, EventArgs e)
        {
            orderItemDataSource.Insert();

            if (!orderItemGridView.Visible)
            {
                orderItemGridView.Visible = true;
            }
            totalLB.Visible = true;
            checkBT.Visible = true;
            cancelBT.Visible = true;
        }

        protected void orderItemGridView_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            errorLB.Text = "";
            errorLB.Visible = false;
            checkBT.Enabled = true;
            countTotal();
            qtCheck();
            qtCheckGridView.DataBind();
        }
        private void qtCheck()
        {
            int num, qt;
            bool isError = false;
            for (int i = 0; i < qtCheckGridView.Rows.Count; ++i)
            {
                if (qtCheckGridView.Rows[i].Cells[1].FindControl("qtNameLB") != null &&
                    qtCheckGridView.Rows[i].Cells[2].FindControl("totalNumLB") != null &&
                    qtCheckGridView.Rows[i].Cells[3].FindControl("checkQtLB") != null)
                {
                    using (Label qtNameLB = (Label)qtCheckGridView.Rows[i].Cells[1].FindControl("qtNameLB"),
                                totalNumLB = (Label)qtCheckGridView.Rows[i].Cells[2].FindControl("totalNumLB"),
                                checkQtLB = (Label)qtCheckGridView.Rows[i].Cells[3].FindControl("checkQtLB"))
                    {
                        num = Convert.ToInt32(totalNumLB.Text);
                        qt = Convert.ToInt32(checkQtLB.Text);
                        if (num > qt)
                        {
                            errorLB.Text += "<br>" + qtNameLB.Text + "庫存不足(剩下" + qt + "杯)";
                            isError = true;
                        }
                    }
                }
            }
            if (isError)
            {
                checkBT.Enabled = false;
                errorLB.Visible = true;
            }
        }
        private void countTotal()
        {
            int total = 0;
            string warnMsg = "";
            for (int i = 0; i < orderItemGridView.Rows.Count; ++i)
            {
                if (orderItemGridView.Rows[i].Cells[4].FindControl("subTotalLB") != null)
                {
                    total += Convert.ToInt32(((Label)orderItemGridView.Rows[i].Cells[4].FindControl("subTotalLB")).Text);
                }
                cupEditCheck(ref warnMsg, i);
            }
            totalLB.Text = warnMsg + "總價 : " + total + "元";

            Session["total"] = total;
            if (0 == total)
            {
                checkBT.Enabled = false;
            }
            if (Convert.ToInt32(Session["money"]) < total)
            {
                checkBT.Enabled = false;
                errorLB.Text = "餘額不足";
                errorLB.Visible = true;
            }
        }

        private void cupEditCheck(ref string msg, int i)
        {
            if (orderItemGridView.Rows[i].Cells[1].FindControl("itemCupLB") != null)
            {
                using (Label tempCupLB = (Label)orderItemGridView.Rows[i].Cells[1].FindControl("itemCupLB"))
                {
                    if (tempCupLB.Text == "0")
                    {
                        msg = "(錯誤的杯數)";
                        tempCupLB.ForeColor = System.Drawing.Color.Red;
                    }
                    else
                    {
                        tempCupLB.ForeColor = System.Drawing.Color.Black;
                    }
                }
            }
        }

        protected void orderItemGridView_RowDeleted(object sender, GridViewDeletedEventArgs e)
        {
            if(orderItemGridView.Rows.Count == 1)
            {
                totalLB.Visible = false;
                errorLB.Visible = false;
                checkBT.Enabled = false;
            }
        }

        protected void editCupTB_TextChanged(object sender, EventArgs e)
        {
            foreach(char ch in ((TextBox)sender).Text)
            {
                if (!Char.IsDigit(ch))
                {
                    ((TextBox)sender).Text = "0";
                }
            }
        }

        protected void checkBT_Click(object sender, EventArgs e)
        {
            Session["money"] = Convert.ToInt32(Session["money"]) - Convert.ToInt32(Session["total"]);
            userShow_LB.Text = Session["name"] + "歡迎光臨<br>您還剩下： " + Session["money"] + " 元";
            clientDataSource.Update();
            updateQt();
            initial();
        }

        private void updateQt()
        {
            int num, qt;
            for (int i = 0; i < qtCheckGridView.Rows.Count; ++i)
            {
                if (qtCheckGridView.Rows[i].Cells[0].FindControl("qtIdLB") != null &&
                    qtCheckGridView.Rows[i].Cells[2].FindControl("totalNumLB") != null &&
                    qtCheckGridView.Rows[i].Cells[3].FindControl("checkQtLB") != null)
                {
                    using (Label qtIdLB = (Label)qtCheckGridView.Rows[i].Cells[0].FindControl("qtIdLB"),
                                totalNumLB = (Label)qtCheckGridView.Rows[i].Cells[2].FindControl("totalNumLB"),
                                checkQtLB = (Label)qtCheckGridView.Rows[i].Cells[3].FindControl("checkQtLB"))
                    {
                        num = Convert.ToInt32(totalNumLB.Text);
                        qt = Convert.ToInt32(checkQtLB.Text);
                        Session["updateQtId"] = Convert.ToInt32(qtIdLB.Text);
                        Session["updateQtNum"] = qt - num;
                        drinkQtDataSource.Update();
                    }
                }
            }
        }

        protected void cancelBT_Click(object sender, EventArgs e)
        {
            drinkDataSelect.Delete();
            cancelOrderDataSource.Delete();
            initial();
        }
    }
}