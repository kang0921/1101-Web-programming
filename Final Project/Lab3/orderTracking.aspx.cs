using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab3
{
    public partial class orderTracking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            inputDetailsView.DataBind();
            trackDetailsView.DataBind();
            errorMsgLB.Visible = false;
        }

        protected void trackBT_Click(object sender, EventArgs e)
        {

            if (1 == inputDetailsView.DataItemCount)
            {
                Session["trackName"] = inputDetailsView.Rows[0].Cells[1].Text;
                Session["trackPhone"] = inputDetailsView.Rows[1].Cells[1].Text;
                inputDetailsView.Visible = true;
                trackDetailsView.Visible = true;
            }
            else
            {
                Session["trackName"] = null;
                Session["trackPhone"] = null;
                errorMsgLB.Text = "查無此帳號";
                errorMsgLB.Visible = true;
            }
           
        }
    }
}