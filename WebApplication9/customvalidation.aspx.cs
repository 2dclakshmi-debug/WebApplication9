using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication9
{
    public partial class customvalidation : System.Web.UI.Page
    {



        protected void Page_Load(object sender, EventArgs e)
        {

            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            lblmsg.Text = "Name : " + txtname.Text +
                "<br>course : " + txtcourse.Text +
                "<br>Mbilenumber :" + txtmobile.Text +
                "<br>Email : " + txtemail.Text +
                "<br>Age : " + txtage.Text +
                "<br>password : " + txtpwd.Text +
                "<br>ConfirmPassword : " + txtconfirmpwd.Text;
        }
        protected void cvage_ServerValidate(object source, ServerValidateEventArgs args)
        {
            int age;
            if (int.TryParse(txtage.Text, out age))
            {
                args.IsValid = (age >= 18 && age <= 60);
            }
            else
            {
                args.IsValid = false;
            }

        }
    }
}