using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace asp2020midsim
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            memberInfoDetailsView.DataBind();
        }

        protected void LoginBT_Click(object sender, EventArgs e)
        {
            memberInfoDetailsView.Visible = false;
            EntryBT.Visible = false;
            if (1 == memberInfoDetailsView.DataItemCount)
            {
                Session["phone"] = memberInfoDetailsView.Rows[0].Cells[1].Text;
                EntryBT.Visible = true;
            }
            else
            {
                Session["phone"] = null;
                memberInfoDetailsView.Visible = true;
            }
        }

        protected void nameDetailsView_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
        {

        }

        protected void addToolBT_Click(object sender, EventArgs e)
        {
            ToolInUseSqlDataSource.Insert();

            SqlConnection orderCon = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\memberInfo.mdf;Integrated Security=True");
            orderCon.Open(); //將資料庫連結開啟

            //需要資料庫指令，所以宣告一個指令物件
            SqlCommand orderCmd = new SqlCommand("select top 1 id from [ToolTable] order by id Desc", orderCon);
            SqlDataReader orderDr; //宣告一個讀取的物件
            orderDr = orderCmd.ExecuteReader();

            orderDr.Close();
        }
    }
}