using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication9
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            lblmsg.Text = "Name : " + txtname.Text +
                "<br>course : " + txtcourse.Text +
                "<br>Mbilenumber :"+txtmobile.Text +
                "<br>Email : " + txtemail.Text +
                "<br>Age : "+txtage.Text +
                "<br>password : " + txtpwd.Text +
                "<br>ConfirmPassword : " + txtconfirmpwd.Text;
        }
    }
}