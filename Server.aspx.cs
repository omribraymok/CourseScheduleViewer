using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace LAB8
{
    public partial class WebForm : System.Web.UI.Page
    {

        //when we are loading the page, abd before we sent to user,
        protected void Page_Load(object sender, EventArgs e)
        {
            lbError.Visible = false;
            lbErrorReg.Visible = false;
            //ispostback - if we did sumbit post back = true; and then , we dont enter here again, only on first time
            if (!IsPostBack)
            {
                if (Session["user"] == null)
                {
                    pnlLogin.Visible = true;
                    pnlRegistr.Visible = false;
                }
                else
                    Response.Redirect("MainWindow.aspx");
            }


        }
        protected void goToRegister_Click(object sender, EventArgs e)
        {
            pnlLogin.Visible = false;
            pnlRegistr.Visible = true;
        }

        protected void goToLogin_Click(object sender, EventArgs e)
        {
            pnlLogin.Visible = true;
            pnlRegistr.Visible = false;
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (tbUsername.Text == "elraz" && tbPassword.Text == "123")
            {
                Session["user"] = tbUsername.Text;
                Response.Redirect("MainWindow.aspx");
            }
            else
            {
                
                lbError.Visible = true;
            }
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (tbUsername.Text == "elraz" && tbPassword.Text == "123")
            {
                Session["user"] = tbUsername.Text;
                Response.Redirect("MainWindow.aspx");
            }
            else
            {

                lbError.Visible = true;
            }
        }



    }
}



