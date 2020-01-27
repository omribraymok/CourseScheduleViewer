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
            SuccessRegister.Visible = false;

            //ispostback - if we did sumbit post back = true; and then , we dont enter here again, only on first time
            if (!IsPostBack)
            {

                if (Session["Account"] == null)
                {
                    pnlLogin.Visible = true;
                    pnlRegistr.Visible = false;
                    SuccessRegister.Visible = false;
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
            using (var db = new webProjectDBEntities())
            {

                var account = db.tbAccounts.Where(tempAccount => tempAccount.UserName == tbUsername.Text && tempAccount.Password == tbPassword.Text).FirstOrDefault();
                if (account == null)
                {
                    lbError.Visible = true;
                }
                else
                {
                    Session["Account"] = account;
                    Response.Redirect("MainWindow.aspx");
                }
            }
                


        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            using (var db = new webProjectDBEntities())
            {


                var account = db.tbAccounts.Where(tempAccount => tempAccount.UserName == tbUsernameReg.Text).ToArray();

                if (account.Length == 0)
                {
                    //Session["user"] = tbUsername.Text;
                    //Response.Redirect("MainWindow.aspx");
                    var NewAccount = new tbAccount()
                    {
                        UserName = tbUsernameReg.Text,
                        Password = tbPasswordReg.Text
                    };
                    db.tbAccounts.Add(NewAccount);
                    db.SaveChanges();
                    SuccessRegister.Visible = true;
                    goToLogin_Click(sender, e);
                }
                else
                {
                    lbErrorReg.Visible = true;
                }
            }
                
        }



    }
}



