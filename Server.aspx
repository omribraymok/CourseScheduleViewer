<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Server.aspx.cs" Inherits="LAB8.WebForm" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <%--bootstrapcdn - in google - this is the palce we took this link, for the css class--%>
    <link rel ="stylesheet" href ="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" />
    <script src="inc/jquery-3.0.0.min.js"></script>
<%--    <script type = "text/javascript">
        $(function ()
        {
        // request data from service
        $.ajax({
        url: "webservice.asmx/GetCourses",
        //data: {
        //    symbol: "BTC"
        //},
        type: 'GET',
        success: function (res) {
        var s = res.documentElement.innerHTML;
        console.log(s);
        var data = JSON.parse(s);
        },
        error: function (er) {
        console.log(er);
        }
        });

        })
    </script>--%> <%--script not working to pull jason from server--%>
   <script>
    var courseJson = [{"ID":"11063","NameOfCourse":"אנגלית בסיסי"},{"ID":"11064","NameOfCourse":"אנגלית מתקדמים א'"},{"ID":"11179","NameOfCourse":"מבוא לפיזיקה אקדמית"},{"ID":"11947","NameOfCourse":"מיומנות למידה"},{"ID":"11004","NameOfCourse":"חדווא 1מ"},{"ID":"11002","NameOfCourse":"אלגברה 1מח"},{"ID":"61740","NameOfCourse":"מערכות ספרתיות"},{"ID":"61741","NameOfCourse":"מבוא למדעי המחשב"},{"ID":"11351","NameOfCourse":"אוריינות בעברית"},{"ID":"11006","NameOfCourse":"חדווא 2מ"},{"ID":"11020","NameOfCourse":"אלגברה 2מח"},{"ID":"11060","NameOfCourse":"אנגלית מתקדמים ב'"},{"ID":"61743","NameOfCourse":"מתמטיקה דיסקרטית 1"},{"ID":"61744","NameOfCourse":"ארגון ותכנון המחשב"},{"ID":"61745","NameOfCourse":"מבוא לתכנות מערכות"},{"ID":"11129","NameOfCourse":"טורים,התמרות ומשוואת דיפרנציאליות"},{"ID":"61746","NameOfCourse":"לוגיקה"},{"ID":"61747","NameOfCourse":"מבני נתונים"},{"ID":"61748","NameOfCourse":"ארכיטקטורה ומבנה המחשב"},{"ID":"61749","NameOfCourse":"מתמתיקה דיסקרטית 2"},{"ID":"61750","NameOfCourse":"מבוא להנדסת תוכנה"},{"ID":"11158","NameOfCourse":"מכניקה להנדסת תוכנה"},{"ID":"61751","NameOfCourse":"תכנות מונחה עצמים"},{"ID":"61752","NameOfCourse":"מערכות הפעלה"},{"ID":"61753","NameOfCourse":"אלגורתמים"},{"ID":"61755","NameOfCourse":"מערכות מסדי נתונים מ"},{"ID":"11069","NameOfCourse":"אנגלית טכנית יישומית - תכנה"},{"ID":"61756","NameOfCourse":"שיטות הנדסיות לפיתוח תכנה"},{"ID":"61757","NameOfCourse":"מבוא לבדיקות תוכנה"},{"ID":"61759","NameOfCourse":"אוטומטים וחישוביות"},{"ID":"61760","NameOfCourse":"הסתברות להנדסת תוכנה"},{"ID":"61769","NameOfCourse":"ממשק אדם מחשב"},{"ID":"11159","NameOfCourse":"חשמל ומגנטיות להנדסת תכנה"},{"ID":"61758","NameOfCourse":"מבנה מערכות הפעלה וזמן אמת"},{"ID":"61761","NameOfCourse":"כריית נתונים ומערכות לומדות"},{"ID":"61763","NameOfCourse":"תורת הקומפלציה"},{"ID":"61764","NameOfCourse":"גרפיקה ממוחשבת"},{"ID":"61765","NameOfCourse":"רשתות מחשבים"},{"ID":"61766","NameOfCourse":"פרויקט בהנדסת תכנה שלב א'"},{"ID":"61767","NameOfCourse":"אבטחת מידע וקריפטולוגיה"},{"ID":"61768","NameOfCourse":"תכנות מקבילי ומבוזר וטכנולוגית ענן"},{"ID":"61770","NameOfCourse":"ממשק אדם מחשב מ'"},{"ID":"61765","NameOfCourse":"פרויקט בהנדסת תכנה שלב ב'"},{"ID":"11198","NameOfCourse":"פיזיקה מודרנית"},{"ID":"41942","NameOfCourse":"מבוא לביולוגיה מולקולרית"},{"ID":"61957","NameOfCourse":"תורת המשחקים"},{"ID":"61958","NameOfCourse":"תורת המידע"},{"ID":"61989","NameOfCourse":"מחשבים קוונטים"},{"ID":"61991","NameOfCourse":"תכנות מדעי"},{"ID":"61992","NameOfCourse":"מבוא לחישה ולמידה"},{"ID":"61959","NameOfCourse":"אנליזה נומרית"},{"ID":"61960","NameOfCourse":"מבוא לאופטמיזציה"},{"ID":"61961","NameOfCourse":"אחזור מידע"},{"ID":"61962","NameOfCourse":"גיאומטריה חישובית ומידול"},{"ID":"61963","NameOfCourse":"בינה מלאכותית"},{"ID":"61964","NameOfCourse":"ויזואליזציה של המידע"},{"ID":"61965","NameOfCourse":"ניתוח של נתונתי הרשתות"},{"ID":"61966","NameOfCourse":"סמינר מערכות לומדות"},{"ID":"61967","NameOfCourse":"סמינר באלגוריתמים אקראיים"},{"ID":"61968","NameOfCourse":"סמינר באלגורתמים מתקדמים"},{"ID":"61969","NameOfCourse":"סמינר באימות תכנה"},{"ID":"61970","NameOfCourse":"סמינר באוטומטים"},{"ID":"61971","NameOfCourse":"עיבוד תמונה ספרתי"},{"ID":"61972","NameOfCourse":"עיבוד אותות ספרתי DSP"},{"ID":"61973","NameOfCourse":"תקשורת אלחוטית ורשתות מחשבים"},{"ID":"61974","NameOfCourse":"בדיקת מערכות ספרתיות"},{"ID":"61975","NameOfCourse":"דחיסת נתונים"},{"ID":"61976","NameOfCourse":"ביולוגיה חישובית"},{"ID":"61994","NameOfCourse":"ראיית מכונה"},{"ID":"61834","NameOfCourse":"מסדי נתונים מבוזרים"},{"ID":"61977","NameOfCourse":"טכנולוגיית WEB מתקדם"},{"ID":"61978","NameOfCourse":"אימות תכנה וחומרה"},{"ID":"61979","NameOfCourse":"מחשוב ענן"},{"ID":"61980","NameOfCourse":"שפות תכנות"},{"ID":"61981","NameOfCourse":"הנדסת דרישות"},{"ID":"61982","NameOfCourse":"מעבדה במידול מערכות אקולוגיות"},{"ID":"61983","NameOfCourse":"מעבדה בתכנות מקבילי והטרוגני"},{"ID":"61984","NameOfCourse":"מעבדה באופטימיזיציה"},{"ID":"61985","NameOfCourse":"מעבדה בפיתוח יישמים באנדרואיד"},{"ID":"61986","NameOfCourse":"מעבדה בסחר אלקטורני"},{"ID":"61987","NameOfCourse":"מעבדה בכריית נתונים"},{"ID":"61988","NameOfCourse":"מעבדה בעיצוב תבניות בתכנה"},{"ID":"61990","NameOfCourse":"מעבדה בטכנולוגיות תכנות צד לקוח ושרת"}];
       var dayToNumber = { "ראשון": 1, "שני": 2, "שלישי": 3, "רביעי": 4, "חמישי": 5, "שישי": 6 };
       var numberToDay = { 1: "ראשון", 2: "שני", 3: "שלישי", 4: "רביעי", 5: "חמישי", 6: "שישי" };
       var hourToNumber = {"8:30":1,"9:30":2,"10:30":3,"11:30":4,"12:50":5,"13:50":6,"14:50":7,"15:50":8,"16:50":9,"17:50":10,"18:50":11,"19:50":12}
       var numberToHour = { 1: "8:30", 2: "9:30", 3: "10:30", 4: "11:30", 5: "12:50", 6: "13:50", 7: "14:50", 8: "15:50", 9: "16:50", 10: "17:50", 11: "18:50", 12:"19:50"}


       $(function () {
           BuildCourseTable();
           BuildScheduleTable();


       })
       function BuildCourseTable()
       {
           $.each(courseJson, function (coursIndex, cours) {
               var tr = $("<tr/>");
               $.each($("#tCourses th"), function (i, o) {
                   var td = $("<td/>");
                   if(i == 0)

                   $(td).text(coursIndex);
               if(i == 1)
                       $(td).text(cours.ID);
               if(i == 2)
                   $(td).text(cours.NameOfCourse);
               
               $(tr).append(td);
               });
               $("#tCourses").find("tbody").append(tr);

           });
       }

       function BuildScheduleTable()
       {
           for (var rowNumber = 1; rowNumber <= 12; rowNumber++) // number of row (hours)
           {
               var tr = $("<tr/>"); // create new row for the table

               for (var dayNumber = 6; dayNumber >= 1; dayNumber--) // number of row (hours)
               {
                   var td = $("<td/>");
                   td.text("row_" + rowNumber + "_column_" + dayNumber);
                   td.attr('id', "row_" + rowNumber + "_column_" + dayNumber);
                   td.attr('onclick', "OnCellInScheduleTableClick(this)");
                   //add buttom
                   var btn = document.createElement('input');
                   btn.type = "button";
                   btn.value = "Remove";
                   btn.style = "display:none";
                   btn.id = "btn_row_" + rowNumber + "_column_" + dayNumber
                   td.append(btn);
                   tr.append(td);
               }
               var th = $("<th/>");
               th.text(numberToHour[rowNumber]);
               tr.append(th);
               $("#tScheduleLecture").find("tbody").append(tr);
           }

       }

       function OnCellInScheduleTableClick(element) {
           if (element.text != "")
           {
               //if not empty show my button
             //document.getElementById("btn_" + element.id).style = "display:block";

              ShowOnlyThisCellBtn(element);
           }
       }
       function ShowOnlyThisCellBtn(element)
       {
           var cellBtnId = "btn_" + element.id;
           document.getElementById(cellBtnId).style = "display:block";
           for (var rowNumber = 1; rowNumber <= 12; rowNumber++) // number of row (hours)
           {
               for (var dayNumber = 6; dayNumber >= 1; dayNumber--) // number of row (hours)
               {
                   var btnCell = document.getElementById("btn_row_" + rowNumber + "_column_" + dayNumber)

                   if (btnCell.id.localeCompare(cellBtnId))
                   {
                       //remove the remove btn from diffrent cell
                       // if there are equal, will not enter
                       btnCell.style = "display:none";
                   }

               }

           }

       }


   </script>
        </head >
<body>
    <form id="form1" runat="server">
        <div class ="container">
            <asp:Panel runat="server" ID="pnlLogin">
                <div style="width:300px;margin:50px auto">
                    <h1>Login form</h1>
                     <div>
                         <label>UserName</label>
                         <asp:TextBox runat="server" ID="tbUsername" CssClass="form-control"></asp:TextBox>
                     </div>

                     <div>
                         <label>Password</label>
                         <asp:TextBox runat="server" ID="tbPassword" CssClass="form-control"></asp:TextBox>
                     </div>

                      <div style="margin-top:20px">
                         <asp:Button runat="server" ID="btnLogin" CssClass="btn btn-info" Text="submit" OnClick="btnLogin_Click"></asp:Button>
                     </div>

                    <div>
                         <asp:Label runat="server" ID="lbError" CssClass="text-warning" Text ="Worng Username or Password"></asp:Label>
                     </div>


                </div>
            </asp:Panel>
             <asp:Panel runat="server" ID="PnlHome">
                 <h1>Welcome </h1>
                 <asp:Button runat="server" ID="btnLogout" CssClass="btn btn-info" Text="Logout" OnClick="btnLogout_Click"></asp:Button>
                 </asp:Panel>
        </div>
    </form>
<div>
    
<div style="float:left;">

            <table id="tCourses" class="table table-bordered table-sm" style="margin-top:20px;">
                <thead>
                <tr>
                    <th style="width:30px">N#</th>
                    <th style="width:120px">ID</th>
                    <th style="width:120px">NameOfCourse</th>
                </tr>
                </thead>
                <tbody>

                </tbody>
            </table>

        
    </div>
    <div style="float:left;">

    <table id="tScheduleLecture"  class="table table-bordered table-sm" style="margin-top:20px;">
        <thead>
        <tr>
            <th style="width:120px">שישי</th>
            <th style="width:120px">חמישי</th>
            <th style="width:120px">רביעי</th>
            <th style="width:120px">שלישי</th>
            <th style="width:120px">שני</th>
            <th style="width:120px">ראשון</th>
            <th style="width:30px">שעה</th>

        </tr>
                
     
        </thead>
        <tbody>

        </tbody>
    </table>

    </div>`
</div>
</body>
</html>
