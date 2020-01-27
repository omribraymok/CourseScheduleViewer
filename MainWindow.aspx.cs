using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace LAB8
{
    public partial class MainWindow : System.Web.UI.Page
    {
        public string courseArray;
        public string  lecturesArray;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                string DirPath = Path.GetDirectoryName(Assembly.GetExecutingAssembly().CodeBase);
                String solPath = DirPath.Substring(0, DirPath.Length - 4);

                var courseArrayPath = (solPath.Substring(6, solPath.Length - 6) + "\\Json\\Courses.json");
                var lecturesArrayPath = (solPath.Substring(6, solPath.Length - 6) + "\\Json\\SESchedule_update.json");

                courseArray = File.ReadAllText(courseArrayPath, Encoding.UTF8);
                lecturesArray = File.ReadAllText(lecturesArrayPath, Encoding.UTF8);
                lbWelcome.Text = "Hello " + ((tbAccount)Session["Account"]).UserName;

            }
        }

        protected void Logout_click(object sender, EventArgs e)
        {
            Session["Account"] = null;
            Response.Redirect("Server.aspx");
        }
    }
}