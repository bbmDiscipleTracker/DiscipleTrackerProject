using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Discipleship.Admin
{
    public partial class AddUsers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String userName = Session["username"].ToString();
            lblUser.Text = userName.ToString();



            Label Region = FormView1.FindControl("RegionLabel") as Label;
            lblRegion.Text = Region.Text;

           
        }

        protected void btnAddNew_Click(object sender, EventArgs e)
        {
            mvUser.ActiveViewIndex = 1;
        }
    }
}