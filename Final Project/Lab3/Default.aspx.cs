using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab3
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            clientDetailsView.DataBind();
        }

        protected void login_Button_Click(object sender, EventArgs e)
        {
            clientDetailsView.Visible = false;
            entry.Visible = false;
            if (1 == clientDetailsView.DataItemCount)
            {
                Session["name"] = clientDetailsView.Rows[0].Cells[1].Text;
                Session["money"] = clientDetailsView.Rows[1].Cells[1].Text;
                Session["phone"] = clientDetailsView.Rows[2].Cells[1].Text;
                entry.Visible = true;
            }
            else
            {
                Session["name"] = null;
                Session["money"] = null;
                Session["phone"] = null;
                clientDetailsView.Visible = true;
            }
        }


    }
}