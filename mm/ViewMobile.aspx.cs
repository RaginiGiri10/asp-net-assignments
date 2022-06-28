using Assignment_1_MobileManagement.Models.ADO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment_1_MobileManagement
{
    public partial class ViewMobile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MobileRepository mobileRepository = new MobileRepository();
            var mobiles = mobileRepository.GetMobiless();

            gridMobiles.DataSource = mobiles;
            gridMobiles.DataBind();

        }
    }
}