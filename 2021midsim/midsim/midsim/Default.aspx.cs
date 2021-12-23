using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace midsim
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            userDetailsView.DataBind();
        }

        protected void loginBT_Click(object sender, EventArgs e)
        {
            userDetailsView.Visible = false;
            entryBT.Visible = false;
            if (1 == userDetailsView.DataItemCount)
            {
                Session["userName"] = userDetailsView.Rows[0].Cells[1].Text;
                Session["userPhone"] = userDetailsView.Rows[1].Cells[1].Text;
                entryBT.Visible = true;
            }
            else
            {
                Session["userName"] = null;
                Session["userPhone"] = null;
            }
        }

        protected void addToolBT_Click(object sender, EventArgs e)
        {
            if (toolTB.Text != "")
            {
                getToolDetail.Insert();
            }
            
        }
    }
}