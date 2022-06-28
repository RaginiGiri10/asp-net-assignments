using Assignment_1_MobileManagement.Models;
using Assignment_1_MobileManagement.Models.ADO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment_1_MobileManagement
{
    public partial class AddMobile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ResetForm();
            }


        }

        protected void btnAddMobile_Click(object sender, EventArgs e)
        {
            Mobile mobile = new Mobile();
            mobile.Name = txtName.Text;
            mobile.Description = txtDescription.Text;
            mobile.ManufacturedBy = txtManufacturedBy.Text;
            mobile.Price = Convert.ToInt32(txtPrice.Text);
            MobileRepository mobileRepository = new MobileRepository();
            mobileRepository.AddMobile(mobile);
            ResetForm();


        }
        private void ResetForm()
        {
            txtName.Text = string.Empty;
            txtDescription.Text = string.Empty;
            txtManufacturedBy.Text = string.Empty;
            txtPrice.Text = string.Empty;

        }

    }
}


