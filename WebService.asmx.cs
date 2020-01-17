using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.Services;
using System.Xml.Linq;

namespace LAB8
{
    /// <summary>
    /// Summary description for WebService
    /// </summary>
    [WebService(Namespace  = "http://microsoft.com/webservices/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]

    public class WebService : System.Web.Services.WebService
    {
   
        [WebMethod(EnableSession = true)]
        public void SaveScheduleTable(string CoursesArray)
        {
            using (var db = new webProjectDBEntities())
            {
                //string path = Path.Combine(Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location), @"Json\Courses.json");
                //return File.ReadAllText(path);
                var scheduleTable = JsonConvert.DeserializeObject(CoursesArray);
                var scheduleTablejson = JsonConvert.DeserializeObject(scheduleTable.ToString());
                var userName = ((tbAccount)Session["Account"]).UserName;
                tbAccount account = db.tbAccounts.FirstOrDefault(u => u.UserName == userName);
                account.ScheduleTable = scheduleTablejson.ToString();
                Session["Account"] = account;
                db.SaveChanges();

            }

        }

        [WebMethod(EnableSession = true)]
        public string LoadScheduleTable()
        {
            //string path = Path.Combine(Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location), @"Json\Courses.json");
            //return File.ReadAllText(path);
            //return JsonConvert.SerializeObject(temptable);
            using (var db = new webProjectDBEntities())
            {
                var userName = ((tbAccount)Session["Account"]).UserName;
                tbAccount account = db.tbAccounts.FirstOrDefault(u => u.UserName == userName);
                return account.ScheduleTable;
            }
        }
    }
}
