using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace midsim
{
    public partial class toolRoom : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            inquireToolDetailsView.DataBind();
            toolSqlDataSource.DataBind();
            
        }

        protected void inquireBT_Click(object sender, EventArgs e)
        {
            inquireToolDetailsView.Visible = false;
            
            if (1 == inquireToolDetailsView.DataItemCount)
            {
                Session["toolName"] = inquireToolDetailsView.Rows[0].Cells[1].Text;
            }
            else
            {
                Session["toolName"] = null;

            }
        }

        protected void toolGridView_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void inquireToolDetailsView_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
        {

        }
    }
}