using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.Services;
using System.Xml.Linq;
using Newtonsoft.Json;

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
        public string temptable = "";
        [WebMethod]
        public void SaveScheduleTable(string CoursesArray)
        {
            //string path = Path.Combine(Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location), @"Json\Courses.json");
            //return File.ReadAllText(path);
            temptable = CoursesArray;
        }

        [WebMethod]
        public string LoadScheduleTable()
        {
            //string path = Path.Combine(Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location), @"Json\Courses.json");
            //return File.ReadAllText(path);
            //return JsonConvert.SerializeObject(temptable);
            return temptable;
        }
    }
}
