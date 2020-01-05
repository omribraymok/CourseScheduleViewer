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
    <style>
          .remove {
     
          background-color: red;
        }
        .remove:hover {
        border: 1px solid red;
          background-color: red;
        }

    </style>
   <script>

       class LecturePartial {
           constructor(ID, CourseName ,lecturer ,type ,classlec ,day ="" , startTime = "" ,endTime = ""  ) {
               this.ID = ID;
               this.CourseName = CourseName;
               this.lecturer = lecturer;
               this.type = type;
               this.classlec = classlec;
               this.day = day;
               this.startTime = startTime;
               this.endTime = endTime;

           }
       }

       var courseArray = [{"ID":"11063","NameOfCourse":"אנגלית בסיסי"},{"ID":"11064","NameOfCourse":"אנגלית מתקדמים א'"},{"ID":"11179","NameOfCourse":"מבוא לפיזיקה אקדמית"},{"ID":"11947","NameOfCourse":"מיומנות למידה"},{"ID":"11004","NameOfCourse":"חדווא 1מ"},{"ID":"11002","NameOfCourse":"אלגברה 1מח"},{"ID":"61740","NameOfCourse":"מערכות ספרתיות"},{"ID":"61741","NameOfCourse":"מבוא למדעי המחשב"},{"ID":"11351","NameOfCourse":"אוריינות בעברית"},{"ID":"11006","NameOfCourse":"חדווא 2מ"},{"ID":"11020","NameOfCourse":"אלגברה 2מח"},{"ID":"11060","NameOfCourse":"אנגלית מתקדמים ב'"},{"ID":"61743","NameOfCourse":"מתמטיקה דיסקרטית 1"},{"ID":"61744","NameOfCourse":"ארגון ותכנון המחשב"},{"ID":"61745","NameOfCourse":"מבוא לתכנות מערכות"},{"ID":"11129","NameOfCourse":"טורים,התמרות ומשוואת דיפרנציאליות"},{"ID":"61746","NameOfCourse":"לוגיקה"},{"ID":"61747","NameOfCourse":"מבני נתונים"},{"ID":"61748","NameOfCourse":"ארכיטקטורה ומבנה המחשב"},{"ID":"61749","NameOfCourse":"מתמתיקה דיסקרטית 2"},{"ID":"61750","NameOfCourse":"מבוא להנדסת תוכנה"},{"ID":"11158","NameOfCourse":"מכניקה להנדסת תוכנה"},{"ID":"61751","NameOfCourse":"תכנות מונחה עצמים"},{"ID":"61752","NameOfCourse":"מערכות הפעלה"},{"ID":"61753","NameOfCourse":"אלגורתמים"},{"ID":"61755","NameOfCourse":"מערכות מסדי נתונים מ"},{"ID":"11069","NameOfCourse":"אנגלית טכנית יישומית - תכנה"},{"ID":"61756","NameOfCourse":"שיטות הנדסיות לפיתוח תכנה"},{"ID":"61757","NameOfCourse":"מבוא לבדיקות תוכנה"},{"ID":"61759","NameOfCourse":"אוטומטים וחישוביות"},{"ID":"61760","NameOfCourse":"הסתברות להנדסת תוכנה"},{"ID":"61769","NameOfCourse":"ממשק אדם מחשב"},{"ID":"11159","NameOfCourse":"חשמל ומגנטיות להנדסת תכנה"},{"ID":"61758","NameOfCourse":"מבנה מערכות הפעלה וזמן אמת"},{"ID":"61761","NameOfCourse":"כריית נתונים ומערכות לומדות"},{"ID":"61763","NameOfCourse":"תורת הקומפלציה"},{"ID":"61764","NameOfCourse":"גרפיקה ממוחשבת"},{"ID":"61765","NameOfCourse":"רשתות מחשבים"},{"ID":"61766","NameOfCourse":"פרויקט בהנדסת תכנה שלב א'"},{"ID":"61767","NameOfCourse":"אבטחת מידע וקריפטולוגיה"},{"ID":"61768","NameOfCourse":"תכנות מקבילי ומבוזר וטכנולוגית ענן"},{"ID":"61770","NameOfCourse":"ממשק אדם מחשב מ'"},{"ID":"61765","NameOfCourse":"פרויקט בהנדסת תכנה שלב ב'"},{"ID":"11198","NameOfCourse":"פיזיקה מודרנית"},{"ID":"41942","NameOfCourse":"מבוא לביולוגיה מולקולרית"},{"ID":"61957","NameOfCourse":"תורת המשחקים"},{"ID":"61958","NameOfCourse":"תורת המידע"},{"ID":"61989","NameOfCourse":"מחשבים קוונטים"},{"ID":"61991","NameOfCourse":"תכנות מדעי"},{"ID":"61992","NameOfCourse":"מבוא לחישה ולמידה"},{"ID":"61959","NameOfCourse":"אנליזה נומרית"},{"ID":"61960","NameOfCourse":"מבוא לאופטמיזציה"},{"ID":"61961","NameOfCourse":"אחזור מידע"},{"ID":"61962","NameOfCourse":"גיאומטריה חישובית ומידול"},{"ID":"61963","NameOfCourse":"בינה מלאכותית"},{"ID":"61964","NameOfCourse":"ויזואליזציה של המידע"},{"ID":"61965","NameOfCourse":"ניתוח של נתונתי הרשתות"},{"ID":"61966","NameOfCourse":"סמינר מערכות לומדות"},{"ID":"61967","NameOfCourse":"סמינר באלגוריתמים אקראיים"},{"ID":"61968","NameOfCourse":"סמינר באלגורתמים מתקדמים"},{"ID":"61969","NameOfCourse":"סמינר באימות תכנה"},{"ID":"61970","NameOfCourse":"סמינר באוטומטים"},{"ID":"61971","NameOfCourse":"עיבוד תמונה ספרתי"},{"ID":"61972","NameOfCourse":"עיבוד אותות ספרתי DSP"},{"ID":"61973","NameOfCourse":"תקשורת אלחוטית ורשתות מחשבים"},{"ID":"61974","NameOfCourse":"בדיקת מערכות ספרתיות"},{"ID":"61975","NameOfCourse":"דחיסת נתונים"},{"ID":"61976","NameOfCourse":"ביולוגיה חישובית"},{"ID":"61994","NameOfCourse":"ראיית מכונה"},{"ID":"61834","NameOfCourse":"מסדי נתונים מבוזרים"},{"ID":"61977","NameOfCourse":"טכנולוגיית WEB מתקדם"},{"ID":"61978","NameOfCourse":"אימות תכנה וחומרה"},{"ID":"61979","NameOfCourse":"מחשוב ענן"},{"ID":"61980","NameOfCourse":"שפות תכנות"},{"ID":"61981","NameOfCourse":"הנדסת דרישות"},{"ID":"61982","NameOfCourse":"מעבדה במידול מערכות אקולוגיות"},{"ID":"61983","NameOfCourse":"מעבדה בתכנות מקבילי והטרוגני"},{"ID":"61984","NameOfCourse":"מעבדה באופטימיזיציה"},{"ID":"61985","NameOfCourse":"מעבדה בפיתוח יישמים באנדרואיד"},{"ID":"61986","NameOfCourse":"מעבדה בסחר אלקטורני"},{"ID":"61987","NameOfCourse":"מעבדה בכריית נתונים"},{"ID":"61988","NameOfCourse":"מעבדה בעיצוב תבניות בתכנה"},{"ID":"61990","NameOfCourse":"מעבדה בטכנולוגיות תכנות צד לקוח ושרת"}];
       var lecturesArray = [{"ID":"61957","CourseName":"תורת המשחקים","lecturer":"ד\"ר קליימן ילנה","type":"הרצאה","classlec":"319","day":{"name":"שני","index":5},"startTime":{"index":8,"hour":"14:50"},"endTime":{"index":11,"hour":"17:50"}},{"ID":"61959","CourseName":"אנליזה נומרית","lecturer":"ד\"ר טולדנו-קטעי דבורה","type":"הרצאה","classlec":"203","day":{"name":"ראשון","index":6},"startTime":{"index":1,"hour":"08:30"},"endTime":{"index":4,"hour":"11:30"}},{"ID":"61834","CourseName":"מסדי נתונים מבוזרים","lecturer":"ד\"ר גולני מתתיהו","type":"הרצאה","classlec":"708","day":{"name":"שלישי","index":4},"startTime":{"index":8,"hour":"14:50"},"endTime":{"index":10,"hour":"16:50"}},{"ID":"61834","CourseName":"מסדי נתונים מבוזרים","lecturer":"ד\"ר גולני מתתיהו","type":"תרגיל","classlec":"708","day":{"name":"שלישי","index":4},"startTime":{"index":10,"hour":"16:50"},"endTime":{"index":11,"hour":"17:50"}},{"ID":"11020","CourseName":"אלגברה 2מח","lecturer":"ד\"ר שנבל אופיר","type":"הרצאה","classlec":"202","day":{"name":"חמישי","index":2},"startTime":{"index":1,"hour":"08:30"},"endTime":{"index":4,"hour":"11:30"}},{"ID":"11020","CourseName":"אלגברה 2מח","lecturer":"פרופ'ח קרפ לביא","type":"הרצאה","classlec":"303","day":{"name":"ראשון","index":6},"startTime":{"index":3,"hour":"10:30"},"endTime":{"index":7,"hour":"13:50"}},{"ID":"11020","CourseName":"אלגברה 2מח","lecturer":"ד\"ר שנבל אופיר","type":"תרגיל","classlec":"309","day":{"name":"ראשון","index":6},"startTime":{"index":7,"hour":"13:50"},"endTime":{"index":9,"hour":"15:50"}},{"ID":"11020","CourseName":"אלגברה 2מח","lecturer":"ד\"ר פוגרבניאק ילנה","type":"תרגיל","classlec":"103","day":{"name":"חמישי","index":2},"startTime":{"index":7,"hour":"13:50"},"endTime":{"index":9,"hour":"15:50"}},{"ID":"11020","CourseName":"אלגברה 2מח","lecturer":"ד\"ר שנבל אופיר","type":"תרגיל","classlec":"301","day":{"name":"חמישי","index":2},"startTime":{"index":4,"hour":"11:30"},"endTime":{"index":7,"hour":"13:50"}},{"ID":"11020","CourseName":"אלגברה 2מח","lecturer":"ד\"ר פוגרבניאק ילנה","type":"תרגיל","classlec":"302","day":{"name":"רביעי","index":3},"startTime":{"index":1,"hour":"08:30"},"endTime":{"index":3,"hour":"10:30"}},{"ID":"61965","CourseName":"ניתוח של נתונתי הרשתות","lecturer":"ד\"ר פרנקל זכריה","type":"הרצאה","classlec":"218","day":{"name":"שני","index":5},"startTime":{"index":1,"hour":"08:30"},"endTime":{"index":3,"hour":"10:30"}},{"ID":"61965","CourseName":"ניתוח של נתונתי הרשתות","lecturer":"ד\"ר פרנקל זכריה","type":"תרגיל","classlec":"218","day":{"name":"שני","index":5},"startTime":{"index":3,"hour":"10:30"},"endTime":{"index":4,"hour":"11:30"}},{"ID":"61966","CourseName":"סמינר מערכות לומדות","lecturer":"ד\"ר וייס-כהן מירי","type":"הרצאה","classlec":"219","day":{"name":"רביעי","index":3},"startTime":{"index":8,"hour":"14:50"},"endTime":{"index":11,"hour":"17:50"}},{"ID":"61967","CourseName":"סמינר באלגוריתמים אקראיים","lecturer":"ד\"ר יהלום אורלי","type":"הרצאה","classlec":"201","day":{"name":"ראשון","index":6},"startTime":{"index":11,"hour":"17:50"},"endTime":{"index":14,"hour":"20:50"}},{"ID":"61973","CourseName":"תקשורת אלחוטית ורשתות מחשבים","lecturer":"ד\"ר סוריאנו פטר","type":"הרצאה","classlec":"301","day":{"name":"שני","index":5},"startTime":{"index":4,"hour":"11:30"},"endTime":{"index":7,"hour":"13:50"}},{"ID":"61973","CourseName":"תקשורת אלחוטית ורשתות מחשבים","lecturer":"ד\"ר סוריאנו פטר","type":"תרגיל","classlec":"301","day":{"name":"שני","index":5},"startTime":{"index":7,"hour":"13:50"},"endTime":{"index":8,"hour":"14:50"}},{"ID":"11158","CourseName":"מכניקה להנדסת תוכנה","lecturer":"ד\"ר הורוביץ יורם","type":"הרצאה","classlec":"409","day":{"name":"שני","index":5},"startTime":{"index":1,"hour":"08:30"},"endTime":{"index":3,"hour":"10:30"}},{"ID":"11158","CourseName":"מכניקה להנדסת תוכנה","lecturer":"פרופ'ח גואטה דפנה","type":"הרצאה","classlec":"705","day":{"name":"רביעי","index":3},"startTime":{"index":9,"hour":"15:50"},"endTime":{"index":11,"hour":"17:50"}},{"ID":"11158","CourseName":"מכניקה להנדסת תוכנה","lecturer":"ד\"ר הורוביץ יורם","type":"סדנה","classlec":"P414","day":{"name":"שני","index":5},"startTime":{"index":8,"hour":"14:50"},"endTime":{"index":9,"hour":"15:50"}},{"ID":"11158","CourseName":"מכניקה להנדסת תוכנה","lecturer":"מר טלץ' יואב","type":"מעבדה","classlec":"418","day":{"name":"שלישי","index":4},"startTime":{"index":1,"hour":"08:30"},"endTime":{"index":3,"hour":"10:30"}},{"ID":"11158","CourseName":"מכניקה להנדסת תוכנה","lecturer":"מר קריימר יורי","type":"מעבדה","classlec":"420","day":{"name":"שלישי","index":4},"startTime":{"index":10,"hour":"16:50"},"endTime":{"index":12,"hour":"18:50"}},{"ID":"11158","CourseName":"מכניקה להנדסת תוכנה","lecturer":"מר קריימר יורי","type":"מעבדה","classlec":"420","day":{"name":"שלישי","index":4},"startTime":{"index":10,"hour":"16:50"},"endTime":{"index":12,"hour":"18:50"}},{"ID":"11158","CourseName":"מכניקה להנדסת תוכנה","lecturer":"","type":"מעבדה","classlec":"","day":{"name":"שבת","index":0},"startTime":{"index":14,"hour":"20:50"},"endTime":{"index":0,"hour":"21:50"}},{"ID":"11158","CourseName":"מכניקה להנדסת תוכנה","lecturer":"מר רוכקינד מיכאל","type":"מעבדה","classlec":"420","day":{"name":"שלישי","index":4},"startTime":{"index":8,"hour":"14:50"},"endTime":{"index":10,"hour":"16:50"}},{"ID":"11158","CourseName":"מכניקה להנדסת תוכנה","lecturer":"מר טלץ' יואב","type":"מעבדה","classlec":"418","day":{"name":"שלישי","index":4},"startTime":{"index":1,"hour":"08:30"},"endTime":{"index":3,"hour":"10:30"}},{"ID":"11158","CourseName":"מכניקה להנדסת תוכנה","lecturer":"מר טלץ' יואב","type":"מעבדה","classlec":"418","day":{"name":"שני","index":5},"startTime":{"index":3,"hour":"10:30"},"endTime":{"index":5,"hour":"12:20"}},{"ID":"11158","CourseName":"מכניקה להנדסת תוכנה","lecturer":"מר טלץ' יואב","type":"מעבדה","classlec":"418","day":{"name":"שני","index":5},"startTime":{"index":3,"hour":"10:30"},"endTime":{"index":5,"hour":"12:20"}},{"ID":"11158","CourseName":"מכניקה להנדסת תוכנה","lecturer":"ד\"ר הורוביץ יורם","type":"תרגיל","classlec":"P414","day":{"name":"שני","index":5},"startTime":{"index":6,"hour":"12:50"},"endTime":{"index":8,"hour":"14:50"}},{"ID":"11158","CourseName":"מכניקה להנדסת תוכנה","lecturer":"ד\"ר אייל עופר","type":"תרגיל","classlec":"P413","day":{"name":"שני","index":5},"startTime":{"index":6,"hour":"12:50"},"endTime":{"index":8,"hour":"14:50"}},{"ID":"11158","CourseName":"מכניקה להנדסת תוכנה","lecturer":"ד\"ר שפיר אורן","type":"תרגיל","classlec":"402","day":{"name":"רביעי","index":3},"startTime":{"index":2,"hour":"09:30"},"endTime":{"index":4,"hour":"11:30"}},{"ID":"11158","CourseName":"מכניקה להנדסת תוכנה","lecturer":"פרופ' ברגר ג'ורג'","type":"תרגיל","classlec":"218","day":{"name":"ראשון","index":6},"startTime":{"index":6,"hour":"12:50"},"endTime":{"index":8,"hour":"14:50"}},{"ID":"61974","CourseName":"בדיקת מערכות ספרתיות","lecturer":"ד\"ר רווה אלנה","type":"הרצאה","classlec":"318","day":{"name":"חמישי","index":2},"startTime":{"index":8,"hour":"14:50"},"endTime":{"index":11,"hour":"17:50"}},{"ID":"61974","CourseName":"בדיקת מערכות ספרתיות","lecturer":"ד\"ר רווה אלנה","type":"תרגיל","classlec":"318","day":{"name":"חמישי","index":2},"startTime":{"index":11,"hour":"17:50"},"endTime":{"index":12,"hour":"18:50"}},{"ID":"11159","CourseName":"חשמל ומגנטיות להנדסת תכנה","lecturer":"ד\"ר שלאבנה עאטף","type":"הרצאה","classlec":"P414","day":{"name":"שלישי","index":4},"startTime":{"index":3,"hour":"10:30"},"endTime":{"index":5,"hour":"12:20"}},{"ID":"11159","CourseName":"חשמל ומגנטיות להנדסת תכנה","lecturer":"ד\"ר נוימן מיכל","type":"הרצאה","classlec":"309","day":{"name":"ראשון","index":6},"startTime":{"index":1,"hour":"08:30"},"endTime":{"index":3,"hour":"10:30"}},{"ID":"11159","CourseName":"חשמל ומגנטיות להנדסת תכנה","lecturer":"ד\"ר וורוביוב רומן","type":"מעבדה","classlec":"418","day":{"name":"חמישי","index":2},"startTime":{"index":6,"hour":"12:50"},"endTime":{"index":8,"hour":"14:50"}},{"ID":"11159","CourseName":"חשמל ומגנטיות להנדסת תכנה","lecturer":"ד\"ר וורוביוב רומן","type":"מעבדה","classlec":"420","day":{"name":"רביעי","index":3},"startTime":{"index":8,"hour":"14:50"},"endTime":{"index":10,"hour":"16:50"}},{"ID":"11159","CourseName":"חשמל ומגנטיות להנדסת תכנה","lecturer":"","type":"מעבדה","classlec":"","day":{"name":"שבת","index":0},"startTime":{"index":11,"hour":"17:50"},"endTime":{"index":12,"hour":"18:50"}},{"ID":"11159","CourseName":"חשמל ומגנטיות להנדסת תכנה","lecturer":"ד\"ר וורוביוב רומן","type":"מעבדה","classlec":"420","day":{"name":"רביעי","index":3},"startTime":{"index":8,"hour":"14:50"},"endTime":{"index":10,"hour":"16:50"}},{"ID":"11159","CourseName":"חשמל ומגנטיות להנדסת תכנה","lecturer":"ד\"ר וורוביוב רומן","type":"מעבדה","classlec":"417","day":{"name":"ראשון","index":6},"startTime":{"index":6,"hour":"12:50"},"endTime":{"index":8,"hour":"14:50"}},{"ID":"11159","CourseName":"חשמל ומגנטיות להנדסת תכנה","lecturer":"ד\"ר וורוביוב רומן","type":"מעבדה","classlec":"418","day":{"name":"חמישי","index":2},"startTime":{"index":6,"hour":"12:50"},"endTime":{"index":8,"hour":"14:50"}},{"ID":"11159","CourseName":"חשמל ומגנטיות להנדסת תכנה","lecturer":"ד\"ר שלאבנה עאטף","type":"תרגיל","classlec":"203","day":{"name":"שני","index":5},"startTime":{"index":1,"hour":"08:30"},"endTime":{"index":3,"hour":"10:30"}},{"ID":"11159","CourseName":"חשמל ומגנטיות להנדסת תכנה","lecturer":"ד\"ר נוימן מיכל","type":"תרגיל","classlec":"520","day":{"name":"ראשון","index":6},"startTime":{"index":3,"hour":"10:30"},"endTime":{"index":5,"hour":"12:20"}},{"ID":"11159","CourseName":"חשמל ומגנטיות להנדסת תכנה","lecturer":"ד\"ר שלאבנה עאטף","type":"תרגיל","classlec":"219","day":{"name":"ראשון","index":6},"startTime":{"index":3,"hour":"10:30"},"endTime":{"index":5,"hour":"12:20"}},{"ID":"61975","CourseName":"דחיסת נתונים","lecturer":"ד\"ר פרנקל זכריה","type":"הרצאה","classlec":"706","day":{"name":"חמישי","index":2},"startTime":{"index":4,"hour":"11:30"},"endTime":{"index":7,"hour":"13:50"}},{"ID":"61975","CourseName":"דחיסת נתונים","lecturer":"ד\"ר פרנקל זכריה","type":"תרגיל","classlec":"706","day":{"name":"חמישי","index":2},"startTime":{"index":7,"hour":"13:50"},"endTime":{"index":8,"hour":"14:50"}},{"ID":"61977","CourseName":"טכנולוגיית WEB מתקדם","lecturer":"מר קסלמן אלכסנדר","type":"הרצאה","classlec":"221","day":{"name":"רביעי","index":3},"startTime":{"index":3,"hour":"10:30"},"endTime":{"index":7,"hour":"13:50"}},{"ID":"61977","CourseName":"טכנולוגיית WEB מתקדם","lecturer":"מר קסלמן אלכסנדר","type":"מעבדה","classlec":"מע'","day":{"name":"רביעי","index":3},"startTime":{"index":7,"hour":"13:50"},"endTime":{"index":9,"hour":"15:50"}},{"ID":"61977","CourseName":"טכנולוגיית WEB מתקדם","lecturer":"מר קסלמן אלכסנדר","type":"מעבדה","classlec":"מע'","day":{"name":"רביעי","index":3},"startTime":{"index":1,"hour":"08:30"},"endTime":{"index":3,"hour":"10:30"}},{"ID":"61980","CourseName":"שפות תכנות","lecturer":"ד\"ר למברג דן","type":"הרצאה","classlec":"319","day":{"name":"ראשון","index":6},"startTime":{"index":8,"hour":"14:50"},"endTime":{"index":10,"hour":"16:50"}},{"ID":"61980","CourseName":"שפות תכנות","lecturer":"ד\"ר למברג דן","type":"תרגיל","classlec":"319","day":{"name":"ראשון","index":6},"startTime":{"index":10,"hour":"16:50"},"endTime":{"index":11,"hour":"17:50"}},{"ID":"61985","CourseName":"מעבדה בפיתוח יישמים באנדרואיד","lecturer":"מר בואנוס דניאל","type":"הרצאה","classlec":"205","day":{"name":"ראשון","index":6},"startTime":{"index":1,"hour":"08:30"},"endTime":{"index":3,"hour":"10:30"}},{"ID":"61985","CourseName":"מעבדה בפיתוח יישמים באנדרואיד","lecturer":"מר בואנוס דניאל","type":"מעבדה","classlec":"205","day":{"name":"ראשון","index":6},"startTime":{"index":3,"hour":"10:30"},"endTime":{"index":4,"hour":"11:30"}},{"ID":"61986","CourseName":"מעבדה בסחר אלקטורני","lecturer":"מר קסלמן אלכסנדר","type":"הרצאה","classlec":"221","day":{"name":"שלישי","index":4},"startTime":{"index":2,"hour":"09:30"},"endTime":{"index":4,"hour":"11:30"}},{"ID":"61986","CourseName":"מעבדה בסחר אלקטורני","lecturer":"מר קסלמן אלכסנדר","type":"מעבדה","classlec":"מע'","day":{"name":"שלישי","index":4},"startTime":{"index":4,"hour":"11:30"},"endTime":{"index":5,"hour":"12:20"}},{"ID":"61986","CourseName":"מעבדה בסחר אלקטורני","lecturer":"מר קסלמן אלכסנדר","type":"מעבדה","classlec":"מע'","day":{"name":"שלישי","index":4},"startTime":{"index":1,"hour":"08:30"},"endTime":{"index":2,"hour":"09:30"}},{"ID":"61987","CourseName":"מעבדה בכריית נתונים","lecturer":"מר זברודסקי דוד","type":"הרצאה","classlec":"708","day":{"name":"ראשון","index":6},"startTime":{"index":6,"hour":"12:50"},"endTime":{"index":8,"hour":"14:50"}},{"ID":"61987","CourseName":"מעבדה בכריית נתונים","lecturer":"מר זברודסקי דוד","type":"מעבדה","classlec":"מע'","day":{"name":"ראשון","index":6},"startTime":{"index":4,"hour":"11:30"},"endTime":{"index":5,"hour":"12:20"}},{"ID":"61987","CourseName":"מעבדה בכריית נתונים","lecturer":"מר זברודסקי דוד","type":"מעבדה","classlec":"217","day":{"name":"ראשון","index":6},"startTime":{"index":8,"hour":"14:50"},"endTime":{"index":9,"hour":"15:50"}},{"ID":"61988","CourseName":"מעבדה בעיצוב תבניות בתכנה","lecturer":"מר קוצ'רוב תמיר","type":"הרצאה","classlec":"מע'","day":{"name":"ראשון","index":6},"startTime":{"index":11,"hour":"17:50"},"endTime":{"index":13,"hour":"19:50"}},{"ID":"61988","CourseName":"מעבדה בעיצוב תבניות בתכנה","lecturer":"מר קוצ'רוב תמיר","type":"מעבדה","classlec":"מע'","day":{"name":"ראשון","index":6},"startTime":{"index":13,"hour":"19:50"},"endTime":{"index":14,"hour":"20:50"}},{"ID":"61990","CourseName":"מעבדה בטכנולוגיות תכנות צד לקוח ושרת","lecturer":"מר קוצ'רוב תמיר","type":"הרצאה","classlec":"מע'","day":{"name":"שישי","index":1},"startTime":{"index":1,"hour":"08:30"},"endTime":{"index":3,"hour":"10:30"}},{"ID":"61990","CourseName":"מעבדה בטכנולוגיות תכנות צד לקוח ושרת","lecturer":"מר קוצ'רוב תמיר","type":"מעבדה","classlec":"מע'","day":{"name":"שישי","index":1},"startTime":{"index":3,"hour":"10:30"},"endTime":{"index":4,"hour":"11:30"}},{"ID":"61992","CourseName":"מבוא לחישה ולמידה","lecturer":"ד\"ר דהן ענת","type":"הרצאה","classlec":"202","day":{"name":"חמישי","index":2},"startTime":{"index":4,"hour":"11:30"},"endTime":{"index":8,"hour":"14:50"}},{"ID":"61994","CourseName":"ראיית מכונה","lecturer":"מר גל תומר","type":"הרצאה","classlec":"205","day":{"name":"שלישי","index":4},"startTime":{"index":8,"hour":"14:50"},"endTime":{"index":10,"hour":"16:50"}},{"ID":"61994","CourseName":"ראיית מכונה","lecturer":"מר גל תומר","type":"תרגיל","classlec":"205","day":{"name":"שלישי","index":4},"startTime":{"index":10,"hour":"16:50"},"endTime":{"index":11,"hour":"17:50"}},{"ID":"11179","CourseName":"מבוא לפיזיקה אקדמית","lecturer":"מר הלוי יהודה","type":"הרצאה","classlec":"P 401","day":{"name":"שני","index":5},"startTime":{"index":10,"hour":"16:50"},"endTime":{"index":13,"hour":"19:50"},"dayTwo":{"name":"שלישי","index":4},"startTimeTwo":{"index":10,"hour":"16:50"},"endTimeTwo":{"index":11,"hour":"17:50"}},{"ID":"11179","CourseName":"מבוא לפיזיקה אקדמית","lecturer":"ד\"ר סכראן פאדי","type":"הרצאה","classlec":"P 409","day":{"name":"שלישי","index":4},"startTime":{"index":10,"hour":"16:50"},"endTime":{"index":11,"hour":"17:50"},"dayTwo":{"name":"חמישי","index":2},"startTimeTwo":{"index":9,"hour":"15:50"},"endTimeTwo":{"index":12,"hour":"18:50"}},{"ID":"11179","CourseName":"מבוא לפיזיקה אקדמית","lecturer":"מר פראג' סלאח","type":"הרצאה","classlec":"P413","day":{"name":"חמישי","index":2},"startTime":{"index":6,"hour":"12:50"},"endTime":{"index":10,"hour":"16:50"}},{"ID":"11179","CourseName":"מבוא לפיזיקה אקדמית","lecturer":"מר קפלון אלכס","type":"הרצאה","classlec":"705","day":{"name":"שני","index":5},"startTime":{"index":10,"hour":"16:50"},"endTime":{"index":13,"hour":"19:50"},"dayTwo":{"name":"שלישי","index":4},"startTimeTwo":{"index":8,"hour":"14:50"},"endTimeTwo":{"index":9,"hour":"15:50"}},{"ID":"11179","CourseName":"מבוא לפיזיקה אקדמית","lecturer":"","type":"שו\"ת","classlec":"","day":{"name":"שבת","index":0},"startTime":{"index":4,"hour":"11:30"},"endTime":{"index":4,"hour":"11:30"}},{"ID":"11179","CourseName":"מבוא לפיזיקה אקדמית","lecturer":"","type":"שו\"ת","classlec":"","day":{"name":"שבת","index":0},"startTime":{"index":5,"hour":"12:20"},"endTime":{"index":5,"hour":"12:20"}},{"ID":"11179","CourseName":"מבוא לפיזיקה אקדמית","lecturer":"","type":"שו\"ת","classlec":"","day":{"name":"שבת","index":0},"startTime":{"index":6,"hour":"12:50"},"endTime":{"index":7,"hour":"13:50"}},{"ID":"11179","CourseName":"מבוא לפיזיקה אקדמית","lecturer":"מר הלוי יהודה","type":"תרגיל","classlec":"709","day":{"name":"שלישי","index":4},"startTime":{"index":11,"hour":"17:50"},"endTime":{"index":13,"hour":"19:50"}},{"ID":"11179","CourseName":"מבוא לפיזיקה אקדמית","lecturer":"ד\"ר סכראן פאדי","type":"תרגיל","classlec":"409","day":{"name":"שלישי","index":4},"startTime":{"index":11,"hour":"17:50"},"endTime":{"index":13,"hour":"19:50"}},{"ID":"11179","CourseName":"מבוא לפיזיקה אקדמית","lecturer":"מר פראג' סלאח","type":"תרגיל","classlec":"P413","day":{"name":"חמישי","index":2},"startTime":{"index":1,"hour":"08:30"},"endTime":{"index":3,"hour":"10:30"}},{"ID":"11179","CourseName":"מבוא לפיזיקה אקדמית","lecturer":"מר פראג' סלאח","type":"תרגיל","classlec":"P413","day":{"name":"רביעי","index":3},"startTime":{"index":6,"hour":"12:50"},"endTime":{"index":8,"hour":"14:50"}},{"ID":"11179","CourseName":"מבוא לפיזיקה אקדמית","lecturer":"מר קפלון אלכס","type":"תרגיל","classlec":"P414","day":{"name":"שלישי","index":4},"startTime":{"index":9,"hour":"15:50"},"endTime":{"index":11,"hour":"17:50"}},{"ID":"11179","CourseName":"מבוא לפיזיקה אקדמית","lecturer":"מר קפלון אלכס","type":"תרגיל","classlec":"P414","day":{"name":"שלישי","index":4},"startTime":{"index":11,"hour":"17:50"},"endTime":{"index":13,"hour":"19:50"}},{"ID":"61740","CourseName":"מערכות ספרתיות","lecturer":"גב' מינישין מרינה","type":"הרצאה","classlec":"203","day":{"name":"שני","index":5},"startTime":{"index":3,"hour":"10:30"},"endTime":{"index":5,"hour":"12:20"}},{"ID":"61740","CourseName":"מערכות ספרתיות","lecturer":"ד\"ר מילר אורנה","type":"הרצאה","classlec":"707","day":{"name":"חמישי","index":2},"startTime":{"index":3,"hour":"10:30"},"endTime":{"index":5,"hour":"12:20"}},{"ID":"61740","CourseName":"מערכות ספרתיות","lecturer":"גב' מינישין מרינה","type":"הרצאה","classlec":"708","day":{"name":"רביעי","index":3},"startTime":{"index":1,"hour":"08:30"},"endTime":{"index":3,"hour":"10:30"}},{"ID":"61740","CourseName":"מערכות ספרתיות","lecturer":"גב' מינישין מרינה","type":"הרצאה","classlec":"707","day":{"name":"חמישי","index":2},"startTime":{"index":7,"hour":"13:50"},"endTime":{"index":9,"hour":"15:50"}},{"ID":"61740","CourseName":"מערכות ספרתיות","lecturer":"גב' מינישין מרינה","type":"תרגיל","classlec":"210","day":{"name":"שני","index":5},"startTime":{"index":2,"hour":"09:30"},"endTime":{"index":3,"hour":"10:30"}},{"ID":"61740","CourseName":"מערכות ספרתיות","lecturer":"גב' מינישין מרינה","type":"תרגיל","classlec":"706","day":{"name":"חמישי","index":2},"startTime":{"index":2,"hour":"09:30"},"endTime":{"index":3,"hour":"10:30"}},{"ID":"61740","CourseName":"מערכות ספרתיות","lecturer":"גב' זמוסטיאנו יאנה","type":"תרגיל","classlec":"203","day":{"name":"ראשון","index":6},"startTime":{"index":4,"hour":"11:30"},"endTime":{"index":5,"hour":"12:20"}},{"ID":"61740","CourseName":"מערכות ספרתיות","lecturer":"גב' זמוסטיאנו יאנה","type":"תרגיל","classlec":"201","day":{"name":"רביעי","index":3},"startTime":{"index":1,"hour":"08:30"},"endTime":{"index":2,"hour":"09:30"}},{"ID":"61740","CourseName":"מערכות ספרתיות","lecturer":"גב' זמוסטיאנו יאנה","type":"תרגיל","classlec":"319","day":{"name":"רביעי","index":3},"startTime":{"index":3,"hour":"10:30"},"endTime":{"index":4,"hour":"11:30"}},{"ID":"61740","CourseName":"מערכות ספרתיות","lecturer":"גב' מינישין מרינה","type":"תרגיל","classlec":"309","day":{"name":"חמישי","index":2},"startTime":{"index":6,"hour":"12:50"},"endTime":{"index":7,"hour":"13:50"}},{"ID":"61741","CourseName":"מבוא למדעי המחשב","lecturer":"ד\"ר מילר אורנה","type":"הרצאה","classlec":"103","day":{"name":"שלישי","index":4},"startTime":{"index":9,"hour":"15:50"},"endTime":{"index":11,"hour":"17:50"}},{"ID":"61741","CourseName":"מבוא למדעי המחשב","lecturer":"ד\"ר מילר אורנה","type":"הרצאה","classlec":"707","day":{"name":"ראשון","index":6},"startTime":{"index":2,"hour":"09:30"},"endTime":{"index":4,"hour":"11:30"}},{"ID":"61741","CourseName":"מבוא למדעי המחשב","lecturer":"מר כהן גדעון","type":"הרצאה","classlec":"705","day":{"name":"שני","index":5},"startTime":{"index":3,"hour":"10:30"},"endTime":{"index":5,"hour":"12:20"}},{"ID":"61741","CourseName":"מבוא למדעי המחשב","lecturer":"מר כהן גדעון","type":"הרצאה","classlec":"705","day":{"name":"ראשון","index":6},"startTime":{"index":2,"hour":"09:30"},"endTime":{"index":4,"hour":"11:30"}},{"ID":"61741","CourseName":"מבוא למדעי המחשב","lecturer":"גב' שבצ'נקו מירה","type":"מעבדה","classlec":"102","day":{"name":"חמישי","index":2},"startTime":{"index":1,"hour":"08:30"},"endTime":{"index":3,"hour":"10:30"}},{"ID":"61741","CourseName":"מבוא למדעי המחשב","lecturer":"גב' שבצ'נקו מירה","type":"מעבדה","classlec":"306","day":{"name":"רביעי","index":3},"startTime":{"index":1,"hour":"08:30"},"endTime":{"index":3,"hour":"10:30"}},{"ID":"61741","CourseName":"מבוא למדעי המחשב","lecturer":"גב' שבצ'נקו מירה","type":"מעבדה","classlec":"316","day":{"name":"רביעי","index":3},"startTime":{"index":3,"hour":"10:30"},"endTime":{"index":5,"hour":"12:20"}},{"ID":"61741","CourseName":"מבוא למדעי המחשב","lecturer":"גב' שבצ'נקו מירה","type":"מעבדה","classlec":"מע'","day":{"name":"חמישי","index":2},"startTime":{"index":7,"hour":"13:50"},"endTime":{"index":9,"hour":"15:50"}},{"ID":"61741","CourseName":"מבוא למדעי המחשב","lecturer":"גב' סלוביטקר פלורינה","type":"מעבדה","classlec":"104","day":{"name":"שלישי","index":4},"startTime":{"index":3,"hour":"10:30"},"endTime":{"index":5,"hour":"12:20"}},{"ID":"61741","CourseName":"מבוא למדעי המחשב","lecturer":"גב' סלוביטקר פלורינה","type":"מעבדה","classlec":"316","day":{"name":"ראשון","index":6},"startTime":{"index":8,"hour":"14:50"},"endTime":{"index":10,"hour":"16:50"}},{"ID":"61741","CourseName":"מבוא למדעי המחשב","lecturer":"גב' שניידר קרן","type":"מעבדה","classlec":"217","day":{"name":"שני","index":5},"startTime":{"index":9,"hour":"15:50"},"endTime":{"index":11,"hour":"17:50"}},{"ID":"61741","CourseName":"מבוא למדעי המחשב","lecturer":"גב' שבצ'נקו מירה","type":"מעבדה","classlec":"207","day":{"name":"שלישי","index":4},"startTime":{"index":3,"hour":"10:30"},"endTime":{"index":5,"hour":"12:20"}},{"ID":"61741","CourseName":"מבוא למדעי המחשב","lecturer":"גב' שניידר קרן","type":"מעבדה","classlec":"316","day":{"name":"רביעי","index":3},"startTime":{"index":1,"hour":"08:30"},"endTime":{"index":3,"hour":"10:30"}},{"ID":"61741","CourseName":"מבוא למדעי המחשב","lecturer":"גב' שניידר קרן","type":"מעבדה","classlec":"מע'","day":{"name":"רביעי","index":3},"startTime":{"index":10,"hour":"16:50"},"endTime":{"index":12,"hour":"18:50"}},{"ID":"61741","CourseName":"מבוא למדעי המחשב","lecturer":"","type":"מעבדה","classlec":"","day":{"name":"שבת","index":0},"startTime":{"index":7,"hour":"13:50"},"endTime":{"index":8,"hour":"14:50"}},{"ID":"61741","CourseName":"מבוא למדעי המחשב","lecturer":"גב' שבצ'נקו מירה","type":"מעבדה","classlec":"102","day":{"name":"שלישי","index":4},"startTime":{"index":1,"hour":"08:30"},"endTime":{"index":3,"hour":"10:30"}},{"ID":"61741","CourseName":"מבוא למדעי המחשב","lecturer":"גב' שניידר קרן","type":"מעבדה","classlec":"102","day":{"name":"רביעי","index":3},"startTime":{"index":3,"hour":"10:30"},"endTime":{"index":5,"hour":"12:20"}},{"ID":"61741","CourseName":"מבוא למדעי המחשב","lecturer":"מר כהן גדעון","type":"תרגיל","classlec":"210","day":{"name":"שני","index":5},"startTime":{"index":6,"hour":"12:50"},"endTime":{"index":8,"hour":"14:50"}},{"ID":"61741","CourseName":"מבוא למדעי המחשב","lecturer":"גב' סלוביטקר פלורינה","type":"תרגיל","classlec":"303","day":{"name":"ראשון","index":6},"startTime":{"index":4,"hour":"11:30"},"endTime":{"index":7,"hour":"13:50"}},{"ID":"61741","CourseName":"מבוא למדעי המחשב","lecturer":"גב' סלוביטקר פלורינה","type":"תרגיל","classlec":"702","day":{"name":"רביעי","index":3},"startTime":{"index":6,"hour":"12:50"},"endTime":{"index":8,"hour":"14:50"}},{"ID":"61741","CourseName":"מבוא למדעי המחשב","lecturer":"גב' שניידר קרן","type":"תרגיל","classlec":"704","day":{"name":"רביעי","index":3},"startTime":{"index":6,"hour":"12:50"},"endTime":{"index":8,"hour":"14:50"}},{"ID":"61741","CourseName":"מבוא למדעי המחשב","lecturer":"גב' שבצ'נקו מירה","type":"תרגיל","classlec":"219","day":{"name":"רביעי","index":3},"startTime":{"index":6,"hour":"12:50"},"endTime":{"index":8,"hour":"14:50"}},{"ID":"61741","CourseName":"מבוא למדעי המחשב","lecturer":"גב' סלוביטקר פלורינה","type":"תרגיל","classlec":"209","day":{"name":"רביעי","index":3},"startTime":{"index":8,"hour":"14:50"},"endTime":{"index":10,"hour":"16:50"}},{"ID":"61741","CourseName":"מבוא למדעי המחשב","lecturer":"גב' שבצ'נקו מירה","type":"תרגיל","classlec":"210","day":{"name":"רביעי","index":3},"startTime":{"index":8,"hour":"14:50"},"endTime":{"index":10,"hour":"16:50"}},{"ID":"61743","CourseName":"מתמטיקה דיסקרטית 1","lecturer":"ד\"ר למברג דן","type":"הרצאה","classlec":"706","day":{"name":"שני","index":5},"startTime":{"index":3,"hour":"10:30"},"endTime":{"index":5,"hour":"12:20"}},{"ID":"61743","CourseName":"מתמטיקה דיסקרטית 1","lecturer":"ד\"ר מוניץ בנימין","type":"הרצאה","classlec":"702","day":{"name":"רביעי","index":3},"startTime":{"index":8,"hour":"14:50"},"endTime":{"index":10,"hour":"16:50"}},{"ID":"61743","CourseName":"מתמטיקה דיסקרטית 1","lecturer":"ד\"ר מוניץ בנימין","type":"הרצאה","classlec":"299","day":{"name":"שלישי","index":4},"startTime":{"index":8,"hour":"14:50"},"endTime":{"index":10,"hour":"16:50"}},{"ID":"61743","CourseName":"מתמטיקה דיסקרטית 1","lecturer":"ד\"ר למברג דן","type":"תרגיל","classlec":"319","day":{"name":"שני","index":5},"startTime":{"index":6,"hour":"12:50"},"endTime":{"index":8,"hour":"14:50"}},{"ID":"61743","CourseName":"מתמטיקה דיסקרטית 1","lecturer":"גב' סלוביטקר פלורינה","type":"תרגיל","classlec":"317","day":{"name":"רביעי","index":3},"startTime":{"index":3,"hour":"10:30"},"endTime":{"index":5,"hour":"12:20"}},{"ID":"61743","CourseName":"מתמטיקה דיסקרטית 1","lecturer":"מר בר יהלום","type":"תרגיל","classlec":"אלי","day":{"name":"שלישי","index":4},"startTime":{"index":10,"hour":"16:50"},"endTime":{"index":12,"hour":"18:50"}},{"ID":"61743","CourseName":"מתמטיקה דיסקרטית 1","lecturer":"ד\"ר מוניץ בנימין","type":"תרגיל","classlec":"702","day":{"name":"רביעי","index":3},"startTime":{"index":10,"hour":"16:50"},"endTime":{"index":12,"hour":"18:50"}},{"ID":"61743","CourseName":"מתמטיקה דיסקרטית 1","lecturer":"ד\"ר מוניץ בנימין","type":"תרגיל","classlec":"299","day":{"name":"שלישי","index":4},"startTime":{"index":10,"hour":"16:50"},"endTime":{"index":12,"hour":"18:50"}},{"ID":"61744","CourseName":"ארגון ותכנון המחשב","lecturer":"ד\"ר רון איתן","type":"הרצאה","classlec":"709","day":{"name":"שלישי","index":4},"startTime":{"index":8,"hour":"14:50"},"endTime":{"index":10,"hour":"16:50"}},{"ID":"61744","CourseName":"ארגון ותכנון המחשב","lecturer":"מר דרור רן","type":"הרצאה","classlec":"112","day":{"name":"חמישי","index":2},"startTime":{"index":4,"hour":"11:30"},"endTime":{"index":7,"hour":"13:50"}},{"ID":"61744","CourseName":"ארגון ותכנון המחשב","lecturer":"גב' קרמר ילנה","type":"מעבדה","classlec":"104","day":{"name":"ראשון","index":6},"startTime":{"index":7,"hour":"13:50"},"endTime":{"index":9,"hour":"15:50"}},{"ID":"61744","CourseName":"ארגון ותכנון המחשב","lecturer":"גב' קרמר ילנה","type":"מעבדה","classlec":"306","day":{"name":"ראשון","index":6},"startTime":{"index":3,"hour":"10:30"},"endTime":{"index":5,"hour":"12:20"}},{"ID":"61744","CourseName":"ארגון ותכנון המחשב","lecturer":"מר זלדנר איליה","type":"מעבדה","classlec":"316","day":{"name":"שני","index":5},"startTime":{"index":8,"hour":"14:50"},"endTime":{"index":10,"hour":"16:50"}},{"ID":"61744","CourseName":"ארגון ותכנון המחשב","lecturer":"מר זלדנר איליה","type":"מעבדה","classlec":"306","day":{"name":"שני","index":5},"startTime":{"index":1,"hour":"08:30"},"endTime":{"index":3,"hour":"10:30"}},{"ID":"61744","CourseName":"ארגון ותכנון המחשב","lecturer":"","type":"מעבדה","classlec":"","day":{"name":"שבת","index":0},"startTime":{"index":14,"hour":"20:50"},"endTime":{"index":0,"hour":"21:50"}},{"ID":"61744","CourseName":"ארגון ותכנון המחשב","lecturer":"גב' קול שלי","type":"מעבדה","classlec":"205","day":{"name":"רביעי","index":3},"startTime":{"index":3,"hour":"10:30"},"endTime":{"index":5,"hour":"12:20"}},{"ID":"61744","CourseName":"ארגון ותכנון המחשב","lecturer":"גב' קול שלי","type":"תרגיל","classlec":"210","day":{"name":"רביעי","index":3},"startTime":{"index":2,"hour":"09:30"},"endTime":{"index":3,"hour":"10:30"}},{"ID":"61744","CourseName":"ארגון ותכנון המחשב","lecturer":"גב' קול שלי","type":"תרגיל","classlec":"201","day":{"name":"חמישי","index":2},"startTime":{"index":7,"hour":"13:50"},"endTime":{"index":8,"hour":"14:50"}},{"ID":"61744","CourseName":"ארגון ותכנון המחשב","lecturer":"גב' קול שלי","type":"תרגיל","classlec":"208","day":{"name":"שני","index":5},"startTime":{"index":2,"hour":"09:30"},"endTime":{"index":3,"hour":"10:30"}},{"ID":"61745","CourseName":"מבוא לתכנות מערכות","lecturer":"גב' קרמר ילנה","type":"הרצאה","classlec":"112","day":{"name":"שלישי","index":4},"startTime":{"index":1,"hour":"08:30"},"endTime":{"index":3,"hour":"10:30"}},{"ID":"61745","CourseName":"מבוא לתכנות מערכות","lecturer":"ד\"ר אברוס רנטה","type":"הרצאה","classlec":"708","day":{"name":"ראשון","index":6},"startTime":{"index":1,"hour":"08:30"},"endTime":{"index":3,"hour":"10:30"}},{"ID":"61745","CourseName":"מבוא לתכנות מערכות","lecturer":"גב' סלוביטקר פלורינה","type":"מעבדה","classlec":"104","day":{"name":"שלישי","index":4},"startTime":{"index":1,"hour":"08:30"},"endTime":{"index":3,"hour":"10:30"}},{"ID":"61745","CourseName":"מבוא לתכנות מערכות","lecturer":"גב' סלוביטקר פלורינה","type":"מעבדה","classlec":"306","day":{"name":"שני","index":5},"startTime":{"index":6,"hour":"12:50"},"endTime":{"index":8,"hour":"14:50"}},{"ID":"61745","CourseName":"מבוא לתכנות מערכות","lecturer":"גב' אפשטיין-אורלוב יבגניה","type":"מעבדה","classlec":"217","day":{"name":"שלישי","index":4},"startTime":{"index":3,"hour":"10:30"},"endTime":{"index":5,"hour":"12:20"}},{"ID":"61745","CourseName":"מבוא לתכנות מערכות","lecturer":"גב' אפשטיין-אורלוב יבגניה","type":"מעבדה","classlec":"104","day":{"name":"ראשון","index":6},"startTime":{"index":3,"hour":"10:30"},"endTime":{"index":5,"hour":"12:20"}},{"ID":"61745","CourseName":"מבוא לתכנות מערכות","lecturer":"מר חסאוי טירן","type":"מעבדה","classlec":"217","day":{"name":"שני","index":5},"startTime":{"index":1,"hour":"08:30"},"endTime":{"index":3,"hour":"10:30"}},{"ID":"61746","CourseName":"לוגיקה","lecturer":"ד\"ר למברג דן","type":"הרצאה","classlec":"203","day":{"name":"שני","index":5},"startTime":{"index":1,"hour":"08:30"},"endTime":{"index":3,"hour":"10:30"}},{"ID":"61746","CourseName":"לוגיקה","lecturer":"ד\"ר למברג דן","type":"הרצאה","classlec":"702","day":{"name":"ראשון","index":6},"startTime":{"index":3,"hour":"10:30"},"endTime":{"index":5,"hour":"12:20"}},{"ID":"61746","CourseName":"לוגיקה","lecturer":"ד\"ר יהלום אורלי","type":"הרצאה","classlec":"706","day":{"name":"שלישי","index":4},"startTime":{"index":3,"hour":"10:30"},"endTime":{"index":5,"hour":"12:20"}},{"ID":"61746","CourseName":"לוגיקה","lecturer":"ד\"ר קמחי יחיאל","type":"תרגיל","classlec":"209","day":{"name":"רביעי","index":3},"startTime":{"index":4,"hour":"11:30"},"endTime":{"index":5,"hour":"12:20"}},{"ID":"61746","CourseName":"לוגיקה","lecturer":"ד\"ר קמחי יחיאל","type":"תרגיל","classlec":"303","day":{"name":"חמישי","index":2},"startTime":{"index":4,"hour":"11:30"},"endTime":{"index":5,"hour":"12:20"}},{"ID":"61746","CourseName":"לוגיקה","lecturer":"מר גבינט איתי","type":"תרגיל","classlec":"221","day":{"name":"ראשון","index":6},"startTime":{"index":10,"hour":"16:50"},"endTime":{"index":11,"hour":"17:50"}},{"ID":"61746","CourseName":"לוגיקה","lecturer":"מר בר יהלום","type":"תרגיל","classlec":"אלי","day":{"name":"ראשון","index":6},"startTime":{"index":9,"hour":"15:50"},"endTime":{"index":10,"hour":"16:50"}},{"ID":"61746","CourseName":"לוגיקה","lecturer":"מר בר יהלום","type":"תרגיל","classlec":"אלי","day":{"name":"ראשון","index":6},"startTime":{"index":8,"hour":"14:50"},"endTime":{"index":9,"hour":"15:50"}},{"ID":"61747","CourseName":"מבני נתונים","lecturer":"גב' קרמר ילנה","type":"הרצאה","classlec":"218","day":{"name":"שלישי","index":4},"startTime":{"index":8,"hour":"14:50"},"endTime":{"index":11,"hour":"17:50"}},{"ID":"61747","CourseName":"מבני נתונים","lecturer":"גב' קרמר ילנה","type":"הרצאה","classlec":"707","day":{"name":"שני","index":5},"startTime":{"index":1,"hour":"08:30"},"endTime":{"index":4,"hour":"11:30"}},{"ID":"61747","CourseName":"מבני נתונים","lecturer":"ד\"ר קליימן ילנה","type":"הרצאה","classlec":"707","day":{"name":"רביעי","index":3},"startTime":{"index":1,"hour":"08:30"},"endTime":{"index":4,"hour":"11:30"}},{"ID":"61747","CourseName":"מבני נתונים","lecturer":"גב' קרמר ילנה","type":"תרגיל","classlec":"218","day":{"name":"שלישי","index":4},"startTime":{"index":11,"hour":"17:50"},"endTime":{"index":12,"hour":"18:50"}},{"ID":"61747","CourseName":"מבני נתונים","lecturer":"גב' קרמר ילנה","type":"תרגיל","classlec":"202","day":{"name":"שני","index":5},"startTime":{"index":4,"hour":"11:30"},"endTime":{"index":5,"hour":"12:20"}},{"ID":"61747","CourseName":"מבני נתונים","lecturer":"גב' דורון חופית","type":"תרגיל","classlec":"210","day":{"name":"ראשון","index":6},"startTime":{"index":9,"hour":"15:50"},"endTime":{"index":10,"hour":"16:50"}},{"ID":"61747","CourseName":"מבני נתונים","lecturer":"גב' דורון חופית","type":"תרגיל","classlec":"210","day":{"name":"ראשון","index":6},"startTime":{"index":10,"hour":"16:50"},"endTime":{"index":11,"hour":"17:50"}},{"ID":"61747","CourseName":"מבני נתונים","lecturer":"ד\"ר קליימן ילנה","type":"תרגיל","classlec":"707","day":{"name":"רביעי","index":3},"startTime":{"index":4,"hour":"11:30"},"endTime":{"index":5,"hour":"12:20"}},{"ID":"11060","CourseName":"אנגלית מתקדמים ב'","lecturer":"גב' ארבל ג'ולי","type":"שו\"ת","classlec":"מע' M 102","day":{"name":"רביעי","index":3},"startTime":{"index":6,"hour":"12:50"},"endTime":{"index":8,"hour":"14:50"},"dayTwo":{"name":"חמישי","index":2},"startTimeTwo":{"index":7,"hour":"13:50"},"endTimeTwo":{"index":9,"hour":"15:50"}},{"ID":"11060","CourseName":"אנגלית מתקדמים ב'","lecturer":"מר עידי ג'יריס","type":"שו\"ת","classlec":"מע' EF 507","day":{"name":"שלישי","index":4},"startTime":{"index":10,"hour":"16:50"},"endTime":{"index":12,"hour":"18:50"},"dayTwo":{"name":"רביעי","index":3},"startTimeTwo":{"index":6,"hour":"12:50"},"endTimeTwo":{"index":8,"hour":"14:50"}},{"ID":"11060","CourseName":"אנגלית מתקדמים ב'","lecturer":"ד\"ר ברמן לורן","type":"שו\"ת","classlec":"M 201","day":{"name":"שני","index":5},"startTime":{"index":8,"hour":"14:50"},"endTime":{"index":10,"hour":"16:50"},"dayTwo":{"name":"רביעי","index":3},"startTimeTwo":{"index":8,"hour":"14:50"},"endTimeTwo":{"index":10,"hour":"16:50"}},{"ID":"11060","CourseName":"אנגלית מתקדמים ב'","lecturer":"גב' גרייב אינאס","type":"שו\"ת","classlec":"M 208","day":{"name":"ראשון","index":6},"startTime":{"index":7,"hour":"13:50"},"endTime":{"index":9,"hour":"15:50"},"dayTwo":{"name":"שלישי","index":4},"startTimeTwo":{"index":10,"hour":"16:50"},"endTimeTwo":{"index":12,"hour":"18:50"}},{"ID":"61748","CourseName":"ארכיטקטורה ומבנה המחשב","lecturer":"מר גרליץ ארז","type":"הרצאה","classlec":"אודיטוריום M 112","day":{"name":"שני","index":5},"startTime":{"index":3,"hour":"10:30"},"endTime":{"index":5,"hour":"12:20"},"dayTwo":{"name":"שלישי","index":4},"startTimeTwo":{"index":3,"hour":"10:30"},"endTimeTwo":{"index":5,"hour":"12:20"}},{"ID":"61748","CourseName":"ארכיטקטורה ומבנה המחשב","lecturer":"מר גרליץ ארז","type":"הרצאה","classlec":"אודיטוריום M 112","day":{"name":"שני","index":5},"startTime":{"index":6,"hour":"12:50"},"endTime":{"index":8,"hour":"14:50"},"dayTwo":{"name":"חמישי","index":2},"startTimeTwo":{"index":7,"hour":"13:50"},"endTimeTwo":{"index":9,"hour":"15:50"}},{"ID":"61748","CourseName":"ארכיטקטורה ומבנה המחשב","lecturer":"מר זלדנר איליה","type":"תרגיל","classlec":"218","day":{"name":"ראשון","index":6},"startTime":{"index":3,"hour":"10:30"},"endTime":{"index":5,"hour":"12:20"}},{"ID":"61748","CourseName":"ארכיטקטורה ומבנה המחשב","lecturer":"מר זלדנר איליה","type":"תרגיל","classlec":"201","day":{"name":"ראשון","index":6},"startTime":{"index":1,"hour":"08:30"},"endTime":{"index":3,"hour":"10:30"}},{"ID":"61748","CourseName":"ארכיטקטורה ומבנה המחשב","lecturer":"גב' מינישין מרינה","type":"תרגיל","classlec":"708","day":{"name":"רביעי","index":3},"startTime":{"index":6,"hour":"12:50"},"endTime":{"index":8,"hour":"14:50"}},{"ID":"61748","CourseName":"ארכיטקטורה ומבנה המחשב","lecturer":"גב' מינישין מרינה","type":"תרגיל","classlec":"218","day":{"name":"שני","index":5},"startTime":{"index":8,"hour":"14:50"},"endTime":{"index":10,"hour":"16:50"}},{"ID":"61749","CourseName":"מתמתיקה דיסקרטית 2","lecturer":"ד\"ר טולדנו-קטעי דבורה","type":"הרצאה","classlec":"703","day":{"name":"שני","index":5},"startTime":{"index":6,"hour":"12:50"},"endTime":{"index":8,"hour":"14:50"}},{"ID":"61749","CourseName":"מתמתיקה דיסקרטית 2","lecturer":"ד\"ר מוניץ בנימין","type":"הרצאה","classlec":"707","day":{"name":"ראשון","index":6},"startTime":{"index":6,"hour":"12:50"},"endTime":{"index":8,"hour":"14:50"}},{"ID":"61749","CourseName":"מתמתיקה דיסקרטית 2","lecturer":"מר גבינט איתי","type":"תרגיל","classlec":"308","day":{"name":"ראשון","index":6},"startTime":{"index":8,"hour":"14:50"},"endTime":{"index":9,"hour":"15:50"}},{"ID":"61749","CourseName":"מתמתיקה דיסקרטית 2","lecturer":"מר גבינט איתי","type":"תרגיל","classlec":"221","day":{"name":"ראשון","index":6},"startTime":{"index":9,"hour":"15:50"},"endTime":{"index":10,"hour":"16:50"}},{"ID":"61749","CourseName":"מתמתיקה דיסקרטית 2","lecturer":"מר גבינט איתי","type":"תרגיל","classlec":"303","day":{"name":"שלישי","index":4},"startTime":{"index":2,"hour":"09:30"},"endTime":{"index":3,"hour":"10:30"}},{"ID":"61749","CourseName":"מתמתיקה דיסקרטית 2","lecturer":"ד\"ר מוניץ בנימין","type":"תרגיל","classlec":"218","day":{"name":"חמישי","index":2},"startTime":{"index":3,"hour":"10:30"},"endTime":{"index":4,"hour":"11:30"}},{"ID":"61750","CourseName":"מבוא להנדסת תוכנה","lecturer":"גב' שיידין ג'וליה","type":"הרצאה","classlec":"704","day":{"name":"חמישי","index":2},"startTime":{"index":1,"hour":"08:30"},"endTime":{"index":4,"hour":"11:30"}},{"ID":"61750","CourseName":"מבוא להנדסת תוכנה","lecturer":"גב' שיידין ג'וליה","type":"הרצאה","classlec":"321","day":{"name":"רביעי","index":3},"startTime":{"index":1,"hour":"08:30"},"endTime":{"index":4,"hour":"11:30"}},{"ID":"61750","CourseName":"מבוא להנדסת תוכנה","lecturer":"גב' קופפר מורן","type":"הרצאה","classlec":"703","day":{"name":"חמישי","index":2},"startTime":{"index":1,"hour":"08:30"},"endTime":{"index":4,"hour":"11:30"}},{"ID":"61750","CourseName":"מבוא להנדסת תוכנה","lecturer":"גב' קופפר מורן","type":"תרגיל","classlec":"319","day":{"name":"חמישי","index":2},"startTime":{"index":4,"hour":"11:30"},"endTime":{"index":7,"hour":"13:50"}},{"ID":"61750","CourseName":"מבוא להנדסת תוכנה","lecturer":"גב' שולנר אביטל","type":"תרגיל","classlec":"208","day":{"name":"חמישי","index":2},"startTime":{"index":4,"hour":"11:30"},"endTime":{"index":7,"hour":"13:50"}},{"ID":"61750","CourseName":"מבוא להנדסת תוכנה","lecturer":"גב' שולנר אביטל","type":"תרגיל","classlec":"208","day":{"name":"חמישי","index":2},"startTime":{"index":7,"hour":"13:50"},"endTime":{"index":9,"hour":"15:50"}},{"ID":"61750","CourseName":"מבוא להנדסת תוכנה","lecturer":"גב' שולנר אביטל","type":"תרגיל","classlec":"321","day":{"name":"חמישי","index":2},"startTime":{"index":9,"hour":"15:50"},"endTime":{"index":11,"hour":"17:50"}},{"ID":"11063","CourseName":"אנגלית בסיסי","lecturer":"","type":"שו\"ת","classlec":"","day":{"name":"שבת","index":0},"startTime":{"index":1,"hour":"08:30"},"endTime":{"index":2,"hour":"09:30"}},{"ID":"11063","CourseName":"אנגלית בסיסי","lecturer":"גב' ארבל ג'ולי","type":"שו\"ת","classlec":"L 705","day":{"name":"ראשון","index":6},"startTime":{"index":7,"hour":"13:50"},"endTime":{"index":10,"hour":"16:50"},"dayTwo":{"name":"רביעי","index":3},"startTimeTwo":{"index":9,"hour":"15:50"},"endTimeTwo":{"index":12,"hour":"18:50"}},{"ID":"11063","CourseName":"אנגלית בסיסי","lecturer":"גב' סוקולובסקי איזבלה","type":"שו\"ת","classlec":"M 303","day":{"name":"ראשון","index":6},"startTime":{"index":7,"hour":"13:50"},"endTime":{"index":10,"hour":"16:50"},"dayTwo":{"name":"רביעי","index":3},"startTimeTwo":{"index":9,"hour":"15:50"},"endTimeTwo":{"index":12,"hour":"18:50"}},{"ID":"11063","CourseName":"אנגלית בסיסי","lecturer":"גב' ארבל ג'ולי","type":"שו\"ת","classlec":"M 210","day":{"name":"שני","index":5},"startTime":{"index":9,"hour":"15:50"},"endTime":{"index":12,"hour":"18:50"},"dayTwo":{"name":"חמישי","index":2},"startTimeTwo":{"index":9,"hour":"15:50"},"endTimeTwo":{"index":12,"hour":"18:50"}},{"ID":"61751","CourseName":"תכנות מונחה עצמים","lecturer":"ד\"ר גולני מתתיהו","type":"הרצאה","classlec":"702","day":{"name":"חמישי","index":2},"startTime":{"index":3,"hour":"10:30"},"endTime":{"index":7,"hour":"13:50"}},{"ID":"61751","CourseName":"תכנות מונחה עצמים","lecturer":"ד\"ר רודה יואב","type":"הרצאה","classlec":"709","day":{"name":"רביעי","index":3},"startTime":{"index":6,"hour":"12:50"},"endTime":{"index":9,"hour":"15:50"}},{"ID":"61751","CourseName":"תכנות מונחה עצמים","lecturer":"BSc בנו נדב","type":"תרגיל","classlec":"317","day":{"name":"רביעי","index":3},"startTime":{"index":1,"hour":"08:30"},"endTime":{"index":2,"hour":"09:30"}},{"ID":"61751","CourseName":"תכנות מונחה עצמים","lecturer":"גב' קופפר מורן","type":"תרגיל","classlec":"204","day":{"name":"ראשון","index":6},"startTime":{"index":3,"hour":"10:30"},"endTime":{"index":4,"hour":"11:30"}},{"ID":"61751","CourseName":"תכנות מונחה עצמים","lecturer":"BSc בנו נדב","type":"תרגיל","classlec":"317","day":{"name":"רביעי","index":3},"startTime":{"index":2,"hour":"09:30"},"endTime":{"index":3,"hour":"10:30"}},{"ID":"11064","CourseName":"אנגלית מתקדמים א'","lecturer":"","type":"שו\"ת","classlec":"","day":{"name":"שבת","index":0},"startTime":{"index":2,"hour":"09:30"},"endTime":{"index":3,"hour":"10:30"}},{"ID":"11064","CourseName":"אנגלית מתקדמים א'","lecturer":"","type":"שו\"ת","classlec":"","day":{"name":"שבת","index":0},"startTime":{"index":3,"hour":"10:30"},"endTime":{"index":4,"hour":"11:30"}},{"ID":"11064","CourseName":"אנגלית מתקדמים א'","lecturer":"ד\"ר ברמן לורן","type":"שו\"ת","classlec":"EF 507","day":{"name":"ראשון","index":6},"startTime":{"index":8,"hour":"14:50"},"endTime":{"index":10,"hour":"16:50"},"dayTwo":{"name":"רביעי","index":3},"startTimeTwo":{"index":10,"hour":"16:50"},"endTimeTwo":{"index":12,"hour":"18:50"}},{"ID":"11064","CourseName":"אנגלית מתקדמים א'","lecturer":"גב' רייכנבוך מרים","type":"שו\"ת","classlec":"מע' EF 506","day":{"name":"ראשון","index":6},"startTime":{"index":8,"hour":"14:50"},"endTime":{"index":10,"hour":"16:50"},"dayTwo":{"name":"רביעי","index":3},"startTimeTwo":{"index":10,"hour":"16:50"},"endTimeTwo":{"index":12,"hour":"18:50"}},{"ID":"11064","CourseName":"אנגלית מתקדמים א'","lecturer":"מר ריפקינד סטיבן","type":"שו\"ת","classlec":"EM 202","day":{"name":"ראשון","index":6},"startTime":{"index":8,"hour":"14:50"},"endTime":{"index":10,"hour":"16:50"},"dayTwo":{"name":"רביעי","index":3},"startTimeTwo":{"index":10,"hour":"16:50"},"endTimeTwo":{"index":12,"hour":"18:50"}},{"ID":"11064","CourseName":"אנגלית מתקדמים א'","lecturer":"מר ריפקינד סטיבן","type":"שו\"ת","classlec":"נגישות M 219","day":{"name":"שני","index":5},"startTime":{"index":10,"hour":"16:50"},"endTime":{"index":12,"hour":"18:50"},"dayTwo":{"name":"חמישי","index":2},"startTimeTwo":{"index":10,"hour":"16:50"},"endTimeTwo":{"index":12,"hour":"18:50"}},{"ID":"11064","CourseName":"אנגלית מתקדמים א'","lecturer":"גב' סוקולובסקי איזבלה","type":"שו\"ת","classlec":"M 321","day":{"name":"שני","index":5},"startTime":{"index":10,"hour":"16:50"},"endTime":{"index":12,"hour":"18:50"},"dayTwo":{"name":"חמישי","index":2},"startTimeTwo":{"index":10,"hour":"16:50"},"endTimeTwo":{"index":12,"hour":"18:50"}},{"ID":"11064","CourseName":"אנגלית מתקדמים א'","lecturer":"מר בדריאן נדב","type":"שו\"ת","classlec":"M 102","day":{"name":"שני","index":5},"startTime":{"index":10,"hour":"16:50"},"endTime":{"index":12,"hour":"18:50"},"dayTwo":{"name":"חמישי","index":2},"startTimeTwo":{"index":10,"hour":"16:50"},"endTimeTwo":{"index":12,"hour":"18:50"}},{"ID":"11064","CourseName":"אנגלית מתקדמים א'","lecturer":"מר ספדי סולטאן","type":"שו\"ת","classlec":"104","day":{"name":"שישי","index":1},"startTime":{"index":1,"hour":"08:30"},"endTime":{"index":5,"hour":"12:20"}},{"ID":"61752","CourseName":"מערכות הפעלה","lecturer":"גב' קול שלי","type":"הרצאה","classlec":"707","day":{"name":"שני","index":5},"startTime":{"index":6,"hour":"12:50"},"endTime":{"index":8,"hour":"14:50"}},{"ID":"61752","CourseName":"מערכות הפעלה","lecturer":"ד\"ר שמואלי אדי","type":"הרצאה","classlec":"707","day":{"name":"חמישי","index":2},"startTime":{"index":1,"hour":"08:30"},"endTime":{"index":3,"hour":"10:30"}},{"ID":"61752","CourseName":"מערכות הפעלה","lecturer":"גב' אפשטיין-אורלוב יבגניה","type":"מעבדה","classlec":"104","day":{"name":"שני","index":5},"startTime":{"index":3,"hour":"10:30"},"endTime":{"index":5,"hour":"12:20"}},{"ID":"61752","CourseName":"מערכות הפעלה","lecturer":"גב' אפשטיין-אורלוב יבגניה","type":"מעבדה","classlec":"104","day":{"name":"ראשון","index":6},"startTime":{"index":1,"hour":"08:30"},"endTime":{"index":3,"hour":"10:30"}},{"ID":"61752","CourseName":"מערכות הפעלה","lecturer":"מר חסאוי טירן","type":"מעבדה","classlec":"306","day":{"name":"רביעי","index":3},"startTime":{"index":9,"hour":"15:50"},"endTime":{"index":11,"hour":"17:50"}},{"ID":"61752","CourseName":"מערכות הפעלה","lecturer":"מר חסאוי טירן","type":"מעבדה","classlec":"306","day":{"name":"שני","index":5},"startTime":{"index":3,"hour":"10:30"},"endTime":{"index":5,"hour":"12:20"}},{"ID":"61752","CourseName":"מערכות הפעלה","lecturer":"גב' דורון חופית","type":"מעבדה","classlec":"306","day":{"name":"ראשון","index":6},"startTime":{"index":6,"hour":"12:50"},"endTime":{"index":8,"hour":"14:50"}},{"ID":"61752","CourseName":"מערכות הפעלה","lecturer":"גב' קול שלי","type":"מעבדה","classlec":"104","day":{"name":"חמישי","index":2},"startTime":{"index":4,"hour":"11:30"},"endTime":{"index":7,"hour":"13:50"}},{"ID":"61752","CourseName":"מערכות הפעלה","lecturer":"ד\"ר סיון רון","type":"תרגיל","classlec":"218","day":{"name":"רביעי","index":3},"startTime":{"index":1,"hour":"08:30"},"endTime":{"index":2,"hour":"09:30"}},{"ID":"61752","CourseName":"מערכות הפעלה","lecturer":"גב' קול שלי","type":"תרגיל","classlec":"208","day":{"name":"חמישי","index":2},"startTime":{"index":3,"hour":"10:30"},"endTime":{"index":4,"hour":"11:30"}},{"ID":"61752","CourseName":"מערכות הפעלה","lecturer":"גב' דורון חופית","type":"תרגיל","classlec":"319","day":{"name":"ראשון","index":6},"startTime":{"index":4,"hour":"11:30"},"endTime":{"index":5,"hour":"12:20"}},{"ID":"61752","CourseName":"מערכות הפעלה","lecturer":"ד\"ר סיון רון","type":"תרגיל","classlec":"321","day":{"name":"רביעי","index":3},"startTime":{"index":4,"hour":"11:30"},"endTime":{"index":5,"hour":"12:20"}},{"ID":"61753","CourseName":"אלגורתמים","lecturer":"ד\"ר שינולד שרי","type":"הרצאה","classlec":"EM 102","day":{"name":"שני","index":5},"startTime":{"index":1,"hour":"08:30"},"endTime":{"index":3,"hour":"10:30"},"dayTwo":{"name":"שלישי","index":4},"startTimeTwo":{"index":3,"hour":"10:30"},"endTimeTwo":{"index":5,"hour":"12:20"}},{"ID":"61753","CourseName":"אלגורתמים","lecturer":"ד\"ר קליימן ילנה","type":"הרצאה","classlec":"אודיטוריום M 112","day":{"name":"שלישי","index":4},"startTime":{"index":8,"hour":"14:50"},"endTime":{"index":10,"hour":"16:50"},"dayTwo":{"name":"חמישי","index":2},"startTimeTwo":{"index":9,"hour":"15:50"},"endTimeTwo":{"index":11,"hour":"17:50"}},{"ID":"61753","CourseName":"אלגורתמים","lecturer":"ד\"ר סיון רון","type":"תרגיל","classlec":"218","day":{"name":"רביעי","index":3},"startTime":{"index":2,"hour":"09:30"},"endTime":{"index":4,"hour":"11:30"}},{"ID":"61753","CourseName":"אלגורתמים","lecturer":"מר בודק קובי","type":"תרגיל","classlec":"505","day":{"name":"ראשון","index":6},"startTime":{"index":2,"hour":"09:30"},"endTime":{"index":4,"hour":"11:30"}},{"ID":"61753","CourseName":"אלגורתמים","lecturer":"ד\"ר קמחי יחיאל","type":"תרגיל","classlec":"319","day":{"name":"חמישי","index":2},"startTime":{"index":7,"hour":"13:50"},"endTime":{"index":9,"hour":"15:50"}},{"ID":"61753","CourseName":"אלגורתמים","lecturer":"ד\"ר קמחי יחיאל","type":"תרגיל","classlec":"202","day":{"name":"רביעי","index":3},"startTime":{"index":2,"hour":"09:30"},"endTime":{"index":4,"hour":"11:30"}},{"ID":"61755","CourseName":"מערכות מסדי נתונים מ","lecturer":"ד\"ר גולני מתתיהו","type":"הרצאה","classlec":"707","day":{"name":"רביעי","index":3},"startTime":{"index":6,"hour":"12:50"},"endTime":{"index":9,"hour":"15:50"}},{"ID":"61755","CourseName":"מערכות מסדי נתונים מ","lecturer":"ד\"ר רודה יואב","type":"הרצאה","classlec":"707","day":{"name":"שלישי","index":4},"startTime":{"index":2,"hour":"09:30"},"endTime":{"index":5,"hour":"12:20"}},{"ID":"61755","CourseName":"מערכות מסדי נתונים מ","lecturer":"ד\"ר גולני מתתיהו","type":"תרגיל","classlec":"209","day":{"name":"חמישי","index":2},"startTime":{"index":7,"hour":"13:50"},"endTime":{"index":9,"hour":"15:50"}},{"ID":"61755","CourseName":"מערכות מסדי נתונים מ","lecturer":"גב' קופפר מורן","type":"תרגיל","classlec":"219","day":{"name":"ראשון","index":6},"startTime":{"index":6,"hour":"12:50"},"endTime":{"index":8,"hour":"14:50"}},{"ID":"61755","CourseName":"מערכות מסדי נתונים מ","lecturer":"גב' קופפר מורן","type":"תרגיל","classlec":"218","day":{"name":"ראשון","index":6},"startTime":{"index":1,"hour":"08:30"},"endTime":{"index":3,"hour":"10:30"}},{"ID":"61756","CourseName":"שיטות הנדסיות לפיתוח תכנה","lecturer":"ד\"ר סופר אבי","type":"הרצאה","classlec":"705","day":{"name":"רביעי","index":3},"startTime":{"index":7,"hour":"13:50"},"endTime":{"index":9,"hour":"15:50"}},{"ID":"61756","CourseName":"שיטות הנדסיות לפיתוח תכנה","lecturer":"ד\"ר גרוסמן מלכה","type":"הרצאה","classlec":"705","day":{"name":"שלישי","index":4},"startTime":{"index":3,"hour":"10:30"},"endTime":{"index":5,"hour":"12:20"}},{"ID":"61756","CourseName":"שיטות הנדסיות לפיתוח תכנה","lecturer":"גב' שיידין ג'וליה","type":"תרגיל","classlec":"102","day":{"name":"חמישי","index":2},"startTime":{"index":4,"hour":"11:30"},"endTime":{"index":8,"hour":"14:50"}},{"ID":"61756","CourseName":"שיטות הנדסיות לפיתוח תכנה","lecturer":"ד\"ר קורנבלט קטרינה","type":"תרגיל","classlec":"מע'","day":{"name":"ראשון","index":6},"startTime":{"index":1,"hour":"08:30"},"endTime":{"index":4,"hour":"11:30"}},{"ID":"61756","CourseName":"שיטות הנדסיות לפיתוח תכנה","lecturer":"ד\"ר דהן ענת","type":"תרגיל","classlec":"104","day":{"name":"שני","index":5},"startTime":{"index":6,"hour":"12:50"},"endTime":{"index":9,"hour":"15:50"}},{"ID":"61756","CourseName":"שיטות הנדסיות לפיתוח תכנה","lecturer":"מר חסאוי טירן","type":"תרגיל","classlec":"306","day":{"name":"רביעי","index":3},"startTime":{"index":3,"hour":"10:30"},"endTime":{"index":7,"hour":"13:50"}},{"ID":"61756","CourseName":"שיטות הנדסיות לפיתוח תכנה","lecturer":"ד\"ר דהן ענת","type":"תרגיל","classlec":"104","day":{"name":"שלישי","index":4},"startTime":{"index":10,"hour":"16:50"},"endTime":{"index":13,"hour":"19:50"}},{"ID":"61756","CourseName":"שיטות הנדסיות לפיתוח תכנה","lecturer":"ד\"ר קורנבלט קטרינה","type":"תרגיל","classlec":"מע'","day":{"name":"שלישי","index":4},"startTime":{"index":10,"hour":"16:50"},"endTime":{"index":13,"hour":"19:50"}},{"ID":"61756","CourseName":"שיטות הנדסיות לפיתוח תכנה","lecturer":"ד\"ר בן יהודה","type":"הנחיית","classlec":"מגי","day":{"name":"חמישי","index":2},"startTime":{"index":9,"hour":"15:50"},"endTime":{"index":12,"hour":"18:50"}},{"ID":"61756","CourseName":"שיטות הנדסיות לפיתוח תכנה","lecturer":"ד\"ר בן יהודה","type":"הנחיית","classlec":"מגי","day":{"name":"שני","index":5},"startTime":{"index":9,"hour":"15:50"},"endTime":{"index":12,"hour":"18:50"}},{"ID":"11069","CourseName":"אנגלית טכנית יישומית - תכנה","lecturer":"גב' סוקולובסקי איזבלה","type":"שו\"ת","classlec":"705","day":{"name":"שני","index":5},"startTime":{"index":8,"hour":"14:50"},"endTime":{"index":10,"hour":"16:50"}},{"ID":"11069","CourseName":"אנגלית טכנית יישומית - תכנה","lecturer":"גב' גרייב אינאס","type":"שו\"ת","classlec":"102","day":{"name":"ראשון","index":6},"startTime":{"index":9,"hour":"15:50"},"endTime":{"index":11,"hour":"17:50"}},{"ID":"11069","CourseName":"אנגלית טכנית יישומית - תכנה","lecturer":"גב' גרייב אינאס","type":"שו\"ת","classlec":"507","day":{"name":"רביעי","index":3},"startTime":{"index":1,"hour":"08:30"},"endTime":{"index":3,"hour":"10:30"}},{"ID":"11069","CourseName":"אנגלית טכנית יישומית - תכנה","lecturer":"גב' סוקולובסקי איזבלה","type":"שו\"ת","classlec":"506","day":{"name":"חמישי","index":2},"startTime":{"index":1,"hour":"08:30"},"endTime":{"index":3,"hour":"10:30"}},{"ID":"11069","CourseName":"אנגלית טכנית יישומית - תכנה","lecturer":"מר עידי ג'יריס","type":"שו\"ת","classlec":"507","day":{"name":"חמישי","index":2},"startTime":{"index":1,"hour":"08:30"},"endTime":{"index":3,"hour":"10:30"}},{"ID":"61757","CourseName":"מבוא לבדיקות תוכנה","lecturer":"ד\"ר קורנבלט קטרינה","type":"הרצאה","classlec":"702","day":{"name":"ראשון","index":6},"startTime":{"index":6,"hour":"12:50"},"endTime":{"index":7,"hour":"13:50"}},{"ID":"61757","CourseName":"מבוא לבדיקות תוכנה","lecturer":"ד\"ר מזין סרגיי","type":"הרצאה","classlec":"706","day":{"name":"חמישי","index":2},"startTime":{"index":3,"hour":"10:30"},"endTime":{"index":4,"hour":"11:30"}},{"ID":"61757","CourseName":"מבוא לבדיקות תוכנה","lecturer":"ד\"ר קורנבלט קטרינה","type":"מעבדה","classlec":"102","day":{"name":"שני","index":5},"startTime":{"index":3,"hour":"10:30"},"endTime":{"index":5,"hour":"12:20"}},{"ID":"61757","CourseName":"מבוא לבדיקות תוכנה","lecturer":"ד\"ר קורנבלט קטרינה","type":"מעבדה","classlec":"207","day":{"name":"שלישי","index":4},"startTime":{"index":1,"hour":"08:30"},"endTime":{"index":3,"hour":"10:30"}},{"ID":"61757","CourseName":"מבוא לבדיקות תוכנה","lecturer":"ד\"ר מזין סרגיי","type":"מעבדה","classlec":"316","day":{"name":"שני","index":5},"startTime":{"index":3,"hour":"10:30"},"endTime":{"index":5,"hour":"12:20"}},{"ID":"61757","CourseName":"מבוא לבדיקות תוכנה","lecturer":"ד\"ר מזין סרגיי","type":"מעבדה","classlec":"מע'","day":{"name":"שני","index":5},"startTime":{"index":1,"hour":"08:30"},"endTime":{"index":3,"hour":"10:30"}},{"ID":"61757","CourseName":"מבוא לבדיקות תוכנה","lecturer":"ד\"ר קורנבלט קטרינה","type":"מעבדה","classlec":"104","day":{"name":"שני","index":5},"startTime":{"index":1,"hour":"08:30"},"endTime":{"index":3,"hour":"10:30"}},{"ID":"61757","CourseName":"מבוא לבדיקות תוכנה","lecturer":"","type":"מעבדה","classlec":"","day":{"name":"שבת","index":0},"startTime":{"index":13,"hour":"19:50"},"endTime":{"index":14,"hour":"20:50"}},{"ID":"61758","CourseName":"מבנה מערכות הפעלה וזמן אמת","lecturer":"ד\"ר רון איתן","type":"הרצאה","classlec":"706","day":{"name":"ראשון","index":6},"startTime":{"index":8,"hour":"14:50"},"endTime":{"index":11,"hour":"17:50"}},{"ID":"61758","CourseName":"מבנה מערכות הפעלה וזמן אמת","lecturer":"ד\"ר רון איתן","type":"הרצאה","classlec":"704","day":{"name":"חמישי","index":2},"startTime":{"index":8,"hour":"14:50"},"endTime":{"index":11,"hour":"17:50"}},{"ID":"61758","CourseName":"מבנה מערכות הפעלה וזמן אמת","lecturer":"מר זלדנר איליה","type":"מעבדה","classlec":"מע'","day":{"name":"שני","index":5},"startTime":{"index":3,"hour":"10:30"},"endTime":{"index":5,"hour":"12:20"}},{"ID":"61758","CourseName":"מבנה מערכות הפעלה וזמן אמת","lecturer":"מר זלדנר איליה","type":"מעבדה","classlec":"316","day":{"name":"ראשון","index":6},"startTime":{"index":6,"hour":"12:50"},"endTime":{"index":8,"hour":"14:50"}},{"ID":"61758","CourseName":"מבנה מערכות הפעלה וזמן אמת","lecturer":"גב' קול שלי","type":"מעבדה","classlec":"217","day":{"name":"שני","index":5},"startTime":{"index":3,"hour":"10:30"},"endTime":{"index":5,"hour":"12:20"}},{"ID":"61758","CourseName":"מבנה מערכות הפעלה וזמן אמת","lecturer":"גב' מינישין מרינה","type":"מעבדה","classlec":"מע'","day":{"name":"רביעי","index":3},"startTime":{"index":3,"hour":"10:30"},"endTime":{"index":5,"hour":"12:20"}},{"ID":"61758","CourseName":"מבנה מערכות הפעלה וזמן אמת","lecturer":"גב' קול שלי","type":"מעבדה","classlec":"306","day":{"name":"חמישי","index":2},"startTime":{"index":1,"hour":"08:30"},"endTime":{"index":3,"hour":"10:30"}},{"ID":"61758","CourseName":"מבנה מערכות הפעלה וזמן אמת","lecturer":"ד\"ר רון איתן","type":"תרגיל","classlec":"704","day":{"name":"חמישי","index":2},"startTime":{"index":11,"hour":"17:50"},"endTime":{"index":12,"hour":"18:50"}},{"ID":"61758","CourseName":"מבנה מערכות הפעלה וזמן אמת","lecturer":"גב' מינישין מרינה","type":"תרגיל","classlec":"201","day":{"name":"חמישי","index":2},"startTime":{"index":4,"hour":"11:30"},"endTime":{"index":5,"hour":"12:20"}},{"ID":"61758","CourseName":"מבנה מערכות הפעלה וזמן אמת","lecturer":"גב' מינישין מרינה","type":"תרגיל","classlec":"210","day":{"name":"חמישי","index":2},"startTime":{"index":1,"hour":"08:30"},"endTime":{"index":2,"hour":"09:30"}},{"ID":"61759","CourseName":"אוטומטים וחישוביות","lecturer":"ד\"ר שינולד שרי","type":"הרצאה","classlec":"EM 102","day":{"name":"שני","index":5},"startTime":{"index":3,"hour":"10:30"},"endTime":{"index":5,"hour":"12:20"},"dayTwo":{"name":"שני","index":5},"startTimeTwo":{"index":6,"hour":"12:50"},"endTimeTwo":{"index":8,"hour":"14:50"}},{"ID":"61759","CourseName":"אוטומטים וחישוביות","lecturer":"ד\"ר רודה יואב","type":"הרצאה","classlec":"EF 505","day":{"name":"ראשון","index":6},"startTime":{"index":4,"hour":"11:30"},"endTime":{"index":7,"hour":"13:50"},"dayTwo":{"name":"רביעי","index":3},"startTimeTwo":{"index":1,"hour":"08:30"},"endTimeTwo":{"index":3,"hour":"10:30"}},{"ID":"61759","CourseName":"אוטומטים וחישוביות","lecturer":"מר בר יהלום","type":"תרגיל","classlec":"אלי","day":{"name":"שלישי","index":4},"startTime":{"index":8,"hour":"14:50"},"endTime":{"index":10,"hour":"16:50"}},{"ID":"61759","CourseName":"אוטומטים וחישוביות","lecturer":"ד\"ר שינולד שרי","type":"תרגיל","classlec":"102","day":{"name":"חמישי","index":2},"startTime":{"index":1,"hour":"08:30"},"endTime":{"index":3,"hour":"10:30"}},{"ID":"61760","CourseName":"הסתברות להנדסת תוכנה","lecturer":"ד\"ר יהלום אורלי","type":"הרצאה","classlec":"705","day":{"name":"רביעי","index":3},"startTime":{"index":3,"hour":"10:30"},"endTime":{"index":7,"hour":"13:50"}},{"ID":"61760","CourseName":"הסתברות להנדסת תוכנה","lecturer":"ד\"ר יהלום אורלי","type":"הרצאה","classlec":"704","day":{"name":"שלישי","index":4},"startTime":{"index":8,"hour":"14:50"},"endTime":{"index":11,"hour":"17:50"}},{"ID":"61760","CourseName":"הסתברות להנדסת תוכנה","lecturer":"ד\"ר מוניץ בנימין","type":"הרצאה","classlec":"706","day":{"name":"ראשון","index":6},"startTime":{"index":1,"hour":"08:30"},"endTime":{"index":4,"hour":"11:30"}},{"ID":"61760","CourseName":"הסתברות להנדסת תוכנה","lecturer":"מר בודק קובי","type":"תרגיל","classlec":"201","day":{"name":"ראשון","index":6},"startTime":{"index":7,"hour":"13:50"},"endTime":{"index":9,"hour":"15:50"}},{"ID":"61760","CourseName":"הסתברות להנדסת תוכנה","lecturer":"מר בודק קובי","type":"תרגיל","classlec":"201","day":{"name":"ראשון","index":6},"startTime":{"index":9,"hour":"15:50"},"endTime":{"index":11,"hour":"17:50"}},{"ID":"61760","CourseName":"הסתברות להנדסת תוכנה","lecturer":"ד\"ר יהלום אורלי","type":"תרגיל","classlec":"209","day":{"name":"ראשון","index":6},"startTime":{"index":7,"hour":"13:50"},"endTime":{"index":9,"hour":"15:50"}},{"ID":"61760","CourseName":"הסתברות להנדסת תוכנה","lecturer":"ד\"ר מוניץ בנימין","type":"תרגיל","classlec":"708","day":{"name":"חמישי","index":2},"startTime":{"index":4,"hour":"11:30"},"endTime":{"index":7,"hour":"13:50"}},{"ID":"61761","CourseName":"כריית נתונים ומערכות לומדות","lecturer":"פרופ' וולקוביץ ולדימיר","type":"הרצאה","classlec":"(זאב)","day":{"name":"שני","index":5},"startTime":{"index":9,"hour":"15:50"},"endTime":{"index":12,"hour":"18:50"}},{"ID":"61761","CourseName":"כריית נתונים ומערכות לומדות","lecturer":"ד\"ר אברוס רנטה","type":"תרגיל","classlec":"107","day":{"name":"שני","index":5},"startTime":{"index":6,"hour":"12:50"},"endTime":{"index":8,"hour":"14:50"}},{"ID":"61761","CourseName":"כריית נתונים ומערכות לומדות","lecturer":"ד\"ר כהן ראובן","type":"תרגיל","classlec":"102","day":{"name":"רביעי","index":3},"startTime":{"index":1,"hour":"08:30"},"endTime":{"index":3,"hour":"10:30"}},{"ID":"61761","CourseName":"כריית נתונים ומערכות לומדות","lecturer":"ד\"ר קורנבלט קטרינה","type":"תרגיל","classlec":"מע'","day":{"name":"שני","index":5},"startTime":{"index":6,"hour":"12:50"},"endTime":{"index":8,"hour":"14:50"}},{"ID":"61761","CourseName":"כריית נתונים ומערכות לומדות","lecturer":"ד\"ר פרנקל זכריה","type":"תרגיל","classlec":"216","day":{"name":"חמישי","index":2},"startTime":{"index":2,"hour":"09:30"},"endTime":{"index":4,"hour":"11:30"}},{"ID":"61761","CourseName":"כריית נתונים ומערכות לומדות","lecturer":"","type":"תרגיל","classlec":"","day":{"name":"שבת","index":0},"startTime":{"index":10,"hour":"16:50"},"endTime":{"index":11,"hour":"17:50"}},{"ID":"61761","CourseName":"כריית נתונים ומערכות לומדות","lecturer":"ד\"ר כהן ראובן","type":"תרגיל","classlec":"104","day":{"name":"רביעי","index":3},"startTime":{"index":3,"hour":"10:30"},"endTime":{"index":5,"hour":"12:20"}},{"ID":"61763","CourseName":"תורת הקומפילציה","lecturer":"ד\"ר למברג דן","type":"הרצאה","classlec":"707","day":{"name":"שלישי","index":4},"startTime":{"index":8,"hour":"14:50"},"endTime":{"index":10,"hour":"16:50"}},{"ID":"61763","CourseName":"תורת הקומפילציה","lecturer":"ד\"ר למברג דן","type":"תרגיל","classlec":"301","day":{"name":"שני","index":5},"startTime":{"index":8,"hour":"14:50"},"endTime":{"index":9,"hour":"15:50"}},{"ID":"61763","CourseName":"תורת הקומפילציה","lecturer":"ד\"ר למברג דן","type":"תרגיל","classlec":"707","day":{"name":"שלישי","index":4},"startTime":{"index":10,"hour":"16:50"},"endTime":{"index":11,"hour":"17:50"}},{"ID":"61764","CourseName":"גרפיקה ממוחשבת","lecturer":"ד\"ר וייס-כהן מירי","type":"הרצאה","classlec":"219","day":{"name":"שלישי","index":4},"startTime":{"index":1,"hour":"08:30"},"endTime":{"index":3,"hour":"10:30"}},{"ID":"61764","CourseName":"גרפיקה ממוחשבת","lecturer":"מר דרור רן","type":"הרצאה","classlec":"112","day":{"name":"רביעי","index":3},"startTime":{"index":6,"hour":"12:50"},"endTime":{"index":8,"hour":"14:50"}},{"ID":"61764","CourseName":"גרפיקה ממוחשבת","lecturer":"מר דרור רן","type":"מעבדה","classlec":"104","day":{"name":"חמישי","index":2},"startTime":{"index":2,"hour":"09:30"},"endTime":{"index":4,"hour":"11:30"}},{"ID":"61764","CourseName":"גרפיקה ממוחשבת","lecturer":"מר דרור רן","type":"מעבדה","classlec":"104","day":{"name":"רביעי","index":3},"startTime":{"index":1,"hour":"08:30"},"endTime":{"index":3,"hour":"10:30"}},{"ID":"61764","CourseName":"גרפיקה ממוחשבת","lecturer":"מר דרור רן","type":"מעבדה","classlec":"205","day":{"name":"שני","index":5},"startTime":{"index":6,"hour":"12:50"},"endTime":{"index":8,"hour":"14:50"}},{"ID":"61764","CourseName":"גרפיקה ממוחשבת","lecturer":"מר דרור רן","type":"מעבדה","classlec":"205","day":{"name":"שני","index":5},"startTime":{"index":3,"hour":"10:30"},"endTime":{"index":5,"hour":"12:20"}},{"ID":"61764","CourseName":"גרפיקה ממוחשבת","lecturer":"","type":"מעבדה","classlec":"","day":{"name":"שבת","index":0},"startTime":{"index":12,"hour":"18:50"},"endTime":{"index":13,"hour":"19:50"}},{"ID":"61765","CourseName":"רשתות מחשבים","lecturer":"מר דרור רן","type":"הרצאה","classlec":"709","day":{"name":"חמישי","index":2},"startTime":{"index":8,"hour":"14:50"},"endTime":{"index":11,"hour":"17:50"}},{"ID":"61765","CourseName":"רשתות מחשבים","lecturer":"ד\"ר פרנקל זכריה","type":"הרצאה","classlec":"702","day":{"name":"שלישי","index":4},"startTime":{"index":8,"hour":"14:50"},"endTime":{"index":11,"hour":"17:50"}},{"ID":"61765","CourseName":"רשתות מחשבים","lecturer":"BSc בנו נדב","type":"מעבדה","classlec":"205","day":{"name":"חמישי","index":2},"startTime":{"index":11,"hour":"17:50"},"endTime":{"index":13,"hour":"19:50"}},{"ID":"61765","CourseName":"רשתות מחשבים","lecturer":"BSc בנו נדב","type":"מעבדה","classlec":"205","day":{"name":"חמישי","index":2},"startTime":{"index":11,"hour":"17:50"},"endTime":{"index":13,"hour":"19:50"}},{"ID":"61765","CourseName":"רשתות מחשבים","lecturer":"מר חסאוי טירן","type":"מעבדה","classlec":"205","day":{"name":"שלישי","index":4},"startTime":{"index":1,"hour":"08:30"},"endTime":{"index":3,"hour":"10:30"}},{"ID":"61765","CourseName":"רשתות מחשבים","lecturer":"מר חסאוי טירן","type":"מעבדה","classlec":"205","day":{"name":"שלישי","index":4},"startTime":{"index":1,"hour":"08:30"},"endTime":{"index":3,"hour":"10:30"}},{"ID":"61765","CourseName":"רשתות מחשבים","lecturer":"","type":"מעבדה","classlec":"","day":{"name":"שבת","index":0},"startTime":{"index":9,"hour":"15:50"},"endTime":{"index":10,"hour":"16:50"}},{"ID":"61766","CourseName":"פרויקט בהנדסת תכנה שלב א'","lecturer":"","type":"הנחיית","classlec":"","day":{"name":"שבת","index":0},"startTime":{"index":8,"hour":"14:50"},"endTime":{"index":9,"hour":"15:50"}},{"ID":"61767","CourseName":"אבטחת מידע וקריפטולוגיה","lecturer":"פרופ' וולקוביץ ולדימיר","type":"הרצאה","classlec":"(זאב)","day":{"name":"ראשון","index":6},"startTime":{"index":1,"hour":"08:30"},"endTime":{"index":4,"hour":"11:30"}},{"ID":"61767","CourseName":"אבטחת מידע וקריפטולוגיה","lecturer":"ד\"ר אברוס רנטה","type":"הרצאה","classlec":"706","day":{"name":"שלישי","index":4},"startTime":{"index":8,"hour":"14:50"},"endTime":{"index":11,"hour":"17:50"}},{"ID":"61767","CourseName":"אבטחת מידע וקריפטולוגיה","lecturer":"מר גבינט איתי","type":"תרגיל","classlec":"202","day":{"name":"ראשון","index":6},"startTime":{"index":4,"hour":"11:30"},"endTime":{"index":7,"hour":"13:50"}},{"ID":"61767","CourseName":"אבטחת מידע וקריפטולוגיה","lecturer":"ד\"ר אברוס רנטה","type":"תרגיל","classlec":"505","day":{"name":"שני","index":5},"startTime":{"index":3,"hour":"10:30"},"endTime":{"index":5,"hour":"12:20"}},{"ID":"61767","CourseName":"אבטחת מידע וקריפטולוגיה","lecturer":"מר גבינט איתי","type":"תרגיל","classlec":"201","day":{"name":"שלישי","index":4},"startTime":{"index":3,"hour":"10:30"},"endTime":{"index":5,"hour":"12:20"}},{"ID":"61768","CourseName":"תכנות מקבילי ומבוזר וטכנולוגית ענן","lecturer":"ד\"ר רווה אלנה","type":"הרצאה","classlec":"112","day":{"name":"ראשון","index":6},"startTime":{"index":1,"hour":"08:30"},"endTime":{"index":4,"hour":"11:30"}},{"ID":"61768","CourseName":"תכנות מקבילי ומבוזר וטכנולוגית ענן","lecturer":"ד\"ר רווה אלנה","type":"הרצאה","classlec":"303","day":{"name":"חמישי","index":2},"startTime":{"index":1,"hour":"08:30"},"endTime":{"index":4,"hour":"11:30"}},{"ID":"61768","CourseName":"תכנות מקבילי ומבוזר וטכנולוגית ענן","lecturer":"ד\"ר רווה אלנה","type":"תרגיל","classlec":"702","day":{"name":"שלישי","index":4},"startTime":{"index":3,"hour":"10:30"},"endTime":{"index":5,"hour":"12:20"}},{"ID":"61768","CourseName":"תכנות מקבילי ומבוזר וטכנולוגית ענן","lecturer":"ד\"ר רווה אלנה","type":"תרגיל","classlec":"112","day":{"name":"ראשון","index":6},"startTime":{"index":4,"hour":"11:30"},"endTime":{"index":7,"hour":"13:50"}},{"ID":"61769","CourseName":"ממשק אדם מחשב","lecturer":"ד\"ר דהן ענת","type":"הרצאה","classlec":"706","day":{"name":"שני","index":5},"startTime":{"index":1,"hour":"08:30"},"endTime":{"index":3,"hour":"10:30"}},{"ID":"61769","CourseName":"ממשק אדם מחשב","lecturer":"גב' שיידין ג'וליה","type":"הרצאה","classlec":"703","day":{"name":"שלישי","index":4},"startTime":{"index":1,"hour":"08:30"},"endTime":{"index":3,"hour":"10:30"}},{"ID":"11351","CourseName":"אוריינות בעברית","lecturer":"גב' בלום ששון שלומית","type":"הרצאה","classlec":"L 704","day":{"name":"שישי","index":1},"startTime":{"index":1,"hour":"08:30"},"endTime":{"index":4,"hour":"11:30"},"dayTwo":{"name":"חמישי","index":2},"startTimeTwo":{"index":6,"hour":"12:50"},"endTimeTwo":{"index":7,"hour":"13:50"}},{"ID":"11351","CourseName":"אוריינות בעברית","lecturer":"גב' בלום ששון","type":"הרצאה","classlec":"שלומית","day":{"name":"שישי","index":1},"startTime":{"index":4,"hour":"11:30"},"endTime":{"index":8,"hour":"14:50"}},{"ID":"11351","CourseName":"אוריינות בעברית","lecturer":"גב' בלום ששון","type":"הרצאה","classlec":"שלומית","day":{"name":"חמישי","index":2},"startTime":{"index":3,"hour":"10:30"},"endTime":{"index":5,"hour":"12:20"}},{"ID":"11129","CourseName":"טורים,התמרות ומשוואת דיפרנציאליות","lecturer":"פרופ'ח כתריאל חגי","type":"הרצאה","classlec":"302","day":{"name":"שלישי","index":4},"startTime":{"index":8,"hour":"14:50"},"endTime":{"index":11,"hour":"17:50"}},{"ID":"11129","CourseName":"טורים,התמרות ומשוואת דיפרנציאליות","lecturer":"פרופ'ח כתריאל חגי","type":"הרצאה","classlec":"707","day":{"name":"שני","index":5},"startTime":{"index":8,"hour":"14:50"},"endTime":{"index":11,"hour":"17:50"}},{"ID":"11129","CourseName":"טורים,התמרות ומשוואת דיפרנציאליות","lecturer":"מר רויטמן אריאל","type":"תרגיל","classlec":"310","day":{"name":"רביעי","index":3},"startTime":{"index":4,"hour":"11:30"},"endTime":{"index":7,"hour":"13:50"}},{"ID":"11129","CourseName":"טורים,התמרות ומשוואת דיפרנציאליות","lecturer":"מר רויטמן אריאל","type":"תרגיל","classlec":"221","day":{"name":"רביעי","index":3},"startTime":{"index":7,"hour":"13:50"},"endTime":{"index":9,"hour":"15:50"}},{"ID":"11129","CourseName":"טורים,התמרות ומשוואת דיפרנציאליות","lecturer":"מר רויטמן אריאל","type":"תרגיל","classlec":"208","day":{"name":"שני","index":5},"startTime":{"index":3,"hour":"10:30"},"endTime":{"index":5,"hour":"12:20"}},{"ID":"11129","CourseName":"טורים,התמרות ומשוואת דיפרנציאליות","lecturer":"פרופ'ח כתריאל חגי","type":"תרגיל","classlec":"708","day":{"name":"חמישי","index":2},"startTime":{"index":9,"hour":"15:50"},"endTime":{"index":11,"hour":"17:50"}},{"ID":"11002","CourseName":"אלגברה 1מח","lecturer":"ד\"ר שוורצמן לודמילה","type":"הרצאה","classlec":"L 705","day":{"name":"שלישי","index":4},"startTime":{"index":1,"hour":"08:30"},"endTime":{"index":3,"hour":"10:30"},"dayTwo":{"name":"רביעי","index":3},"startTimeTwo":{"index":3,"hour":"10:30"},"endTimeTwo":{"index":5,"hour":"12:20"}},{"ID":"11002","CourseName":"אלגברה 1מח","lecturer":"ד\"ר שוורצמן לודמילה","type":"הרצאה","classlec":"EM 203","day":{"name":"שני","index":5},"startTime":{"index":7,"hour":"13:50"},"endTime":{"index":9,"hour":"15:50"},"dayTwo":{"name":"רביעי","index":3},"startTimeTwo":{"index":6,"hour":"12:50"},"endTimeTwo":{"index":8,"hour":"14:50"}},{"ID":"11002","CourseName":"אלגברה 1מח","lecturer":"ד\"ר ח'רוף עזיז","type":"תרגיל","classlec":"301","day":{"name":"חמישי","index":2},"startTime":{"index":7,"hour":"13:50"},"endTime":{"index":9,"hour":"15:50"}},{"ID":"11002","CourseName":"אלגברה 1מח","lecturer":"מר ונצק ולנטין","type":"תרגיל","classlec":"209","day":{"name":"ראשון","index":6},"startTime":{"index":4,"hour":"11:30"},"endTime":{"index":7,"hour":"13:50"}},{"ID":"11002","CourseName":"אלגברה 1מח","lecturer":"מר ונצק ולנטין","type":"תרגיל","classlec":"203","day":{"name":"חמישי","index":2},"startTime":{"index":4,"hour":"11:30"},"endTime":{"index":7,"hour":"13:50"}},{"ID":"11002","CourseName":"אלגברה 1מח","lecturer":"ד\"ר ח'רוף עזיז","type":"תרגיל","classlec":"222","day":{"name":"חמישי","index":2},"startTime":{"index":4,"hour":"11:30"},"endTime":{"index":7,"hour":"13:50"}},{"ID":"11004","CourseName":"חדווא 1מ","lecturer":"ד\"ר יעקובזון פיאנה","type":"הרצאה","classlec":"EM 202","day":{"name":"שלישי","index":4},"startTime":{"index":1,"hour":"08:30"},"endTime":{"index":3,"hour":"10:30"},"dayTwo":{"name":"רביעי","index":3},"startTimeTwo":{"index":3,"hour":"10:30"},"endTimeTwo":{"index":5,"hour":"12:20"}},{"ID":"11004","CourseName":"חדווא 1מ","lecturer":"ד\"ר קורמן ולדימיר","type":"הרצאה","classlec":"EM 203","day":{"name":"שלישי","index":4},"startTime":{"index":1,"hour":"08:30"},"endTime":{"index":3,"hour":"10:30"},"dayTwo":{"name":"רביעי","index":3},"startTimeTwo":{"index":3,"hour":"10:30"},"endTimeTwo":{"index":5,"hour":"12:20"}},{"ID":"11004","CourseName":"חדווא 1מ","lecturer":"ד\"ר סוקאן אמיל","type":"הרצאה","classlec":"L 704","day":{"name":"שני","index":5},"startTime":{"index":1,"hour":"08:30"},"endTime":{"index":3,"hour":"10:30"},"dayTwo":{"name":"רביעי","index":3},"startTimeTwo":{"index":1,"hour":"08:30"},"endTimeTwo":{"index":3,"hour":"10:30"}},{"ID":"11004","CourseName":"חדווא 1מ","lecturer":"פרופ' ילין מרק","type":"הרצאה","classlec":"EM 302","day":{"name":"שלישי","index":4},"startTime":{"index":1,"hour":"08:30"},"endTime":{"index":3,"hour":"10:30"},"dayTwo":{"name":"רביעי","index":3},"startTimeTwo":{"index":3,"hour":"10:30"},"endTimeTwo":{"index":5,"hour":"12:20"}},{"ID":"11004","CourseName":"חדווא 1מ","lecturer":"ד\"ר יעקובזון פיאנה","type":"הרצאה","classlec":"L 705","day":{"name":"שני","index":5},"startTime":{"index":1,"hour":"08:30"},"endTime":{"index":3,"hour":"10:30"},"dayTwo":{"name":"רביעי","index":3},"startTimeTwo":{"index":1,"hour":"08:30"},"endTimeTwo":{"index":3,"hour":"10:30"}},{"ID":"11004","CourseName":"חדווא 1מ","lecturer":"ד\"ר אוסטרובסקי ויקטור","type":"הרצאה","classlec":"EM 102","day":{"name":"ראשון","index":6},"startTime":{"index":4,"hour":"11:30"},"endTime":{"index":7,"hour":"13:50"},"dayTwo":{"name":"שני","index":5},"startTimeTwo":{"index":3,"hour":"10:30"},"endTimeTwo":{"index":5,"hour":"12:20"}},{"ID":"11004","CourseName":"חדווא 1מ","lecturer":"גב' צ'סנוקוב זויה","type":"תרגיל","classlec":"201","day":{"name":"רביעי","index":3},"startTime":{"index":8,"hour":"14:50"},"endTime":{"index":10,"hour":"16:50"}},{"ID":"11004","CourseName":"חדווא 1מ","lecturer":"ד\"ר קורמן ולדימיר","type":"תרגיל","classlec":"319","day":{"name":"שלישי","index":4},"startTime":{"index":3,"hour":"10:30"},"endTime":{"index":5,"hour":"12:20"}},{"ID":"11004","CourseName":"חדווא 1מ","lecturer":"גב' אבו סאלח","type":"תרגיל","classlec":"הנד","day":{"name":"חמישי","index":2},"startTime":{"index":9,"hour":"15:50"},"endTime":{"index":11,"hour":"17:50"}},{"ID":"11004","CourseName":"חדווא 1מ","lecturer":"גב' צ'סנוקוב זויה","type":"תרגיל","classlec":"318","day":{"name":"שני","index":5},"startTime":{"index":9,"hour":"15:50"},"endTime":{"index":11,"hour":"17:50"}},{"ID":"11004","CourseName":"חדווא 1מ","lecturer":"מר מטר וואיל","type":"תרגיל","classlec":"302","day":{"name":"חמישי","index":2},"startTime":{"index":7,"hour":"13:50"},"endTime":{"index":9,"hour":"15:50"}},{"ID":"11004","CourseName":"חדווא 1מ","lecturer":"ד\"ר אוסטרובסקי ויקטור","type":"תרגיל","classlec":"203","day":{"name":"שני","index":5},"startTime":{"index":8,"hour":"14:50"},"endTime":{"index":10,"hour":"16:50"}},{"ID":"11004","CourseName":"חדווא 1מ","lecturer":"מר מטר וואיל","type":"תרגיל","classlec":"317","day":{"name":"חמישי","index":2},"startTime":{"index":9,"hour":"15:50"},"endTime":{"index":11,"hour":"17:50"}},{"ID":"11004","CourseName":"חדווא 1מ","lecturer":"מר אבני אלירן","type":"תרגיל","classlec":"103","day":{"name":"שני","index":5},"startTime":{"index":8,"hour":"14:50"},"endTime":{"index":10,"hour":"16:50"}},{"ID":"11004","CourseName":"חדווא 1מ","lecturer":"מר אבני אלירן","type":"תרגיל","classlec":"103","day":{"name":"שני","index":5},"startTime":{"index":10,"hour":"16:50"},"endTime":{"index":12,"hour":"18:50"}},{"ID":"11004","CourseName":"חדווא 1מ","lecturer":"ד\"ר אוסטרובסקי ויקטור","type":"תרגיל","classlec":"201","day":{"name":"רביעי","index":3},"startTime":{"index":6,"hour":"12:50"},"endTime":{"index":8,"hour":"14:50"}},{"ID":"11006","CourseName":"חדווא 2מ","lecturer":"ד\"ר גולדוורד אלכסנדר","type":"הרצאה","classlec":"L 708","day":{"name":"שני","index":5},"startTime":{"index":3,"hour":"10:30"},"endTime":{"index":5,"hour":"12:20"},"dayTwo":{"name":"שלישי","index":4},"startTimeTwo":{"index":3,"hour":"10:30"},"endTimeTwo":{"index":5,"hour":"12:20"}},{"ID":"11006","CourseName":"חדווא 2מ","lecturer":"ד\"ר יעקובזון פיאנה","type":"הרצאה","classlec":"EM 302","day":{"name":"שני","index":5},"startTime":{"index":3,"hour":"10:30"},"endTime":{"index":5,"hour":"12:20"},"dayTwo":{"name":"שלישי","index":4},"startTimeTwo":{"index":3,"hour":"10:30"},"endTimeTwo":{"index":5,"hour":"12:20"}},{"ID":"11006","CourseName":"חדווא 2מ","lecturer":"ד\"ר פוגרבניאק ילנה","type":"הרצאה","classlec":"L 702","day":{"name":"רביעי","index":3},"startTime":{"index":3,"hour":"10:30"},"endTime":{"index":5,"hour":"12:20"},"dayTwo":{"name":"חמישי","index":2},"startTimeTwo":{"index":2,"hour":"09:30"},"endTimeTwo":{"index":4,"hour":"11:30"}},{"ID":"11006","CourseName":"חדווא 2מ","lecturer":"ד\"ר קליס אולג","type":"תרגיל","classlec":"317","day":{"name":"חמישי","index":2},"startTime":{"index":4,"hour":"11:30"},"endTime":{"index":7,"hour":"13:50"}},{"ID":"11006","CourseName":"חדווא 2מ","lecturer":"ד\"ר מולדבסקי אלינה","type":"תרגיל","classlec":"209","day":{"name":"חמישי","index":2},"startTime":{"index":4,"hour":"11:30"},"endTime":{"index":7,"hour":"13:50"}},{"ID":"11006","CourseName":"חדווא 2מ","lecturer":"ד\"ר קליס אולג","type":"תרגיל","classlec":"309","day":{"name":"שני","index":5},"startTime":{"index":6,"hour":"12:50"},"endTime":{"index":8,"hour":"14:50"}},{"ID":"11006","CourseName":"חדווא 2מ","lecturer":"ד\"ר מולדבסקי אלינה","type":"תרגיל","classlec":"317","day":{"name":"חמישי","index":2},"startTime":{"index":7,"hour":"13:50"},"endTime":{"index":9,"hour":"15:50"}},{"ID":"11006","CourseName":"חדווא 2מ","lecturer":"ד\"ר גולדוורד אלכסנדר","type":"תרגיל","classlec":"706","day":{"name":"רביעי","index":3},"startTime":{"index":6,"hour":"12:50"},"endTime":{"index":8,"hour":"14:50"}},{"ID":"11006","CourseName":"חדווא 2מ","lecturer":"ד\"ר פוגרבניאק ילנה","type":"תרגיל","classlec":"209","day":{"name":"רביעי","index":3},"startTime":{"index":6,"hour":"12:50"},"endTime":{"index":8,"hour":"14:50"}}]
       var correntCourseLecturesShownID = "00000";
       var dayToNumber = { "ראשון": 1, "שני": 2, "שלישי": 3, "רביעי": 4, "חמישי": 5, "שישי": 6 };
       var numberToDay = { 1: "ראשון", 2: "שני", 3: "שלישי", 4: "רביעי", 5: "חמישי", 6: "שישי" };
       var hourToNumberStrart = { "08:30": 1, "09:30": 2, "10:30": 3, "11:30": 4, "12:50": 5, "13:50": 6, "14:50": 7, "15:50": 8, "16:50": 9, "17:50": 10, "18:50": 11, "19:50": 12 }
       var hourToNumberEnd = {"08:30":1,"09:30":2,"10:30":3,"11:30":4,"12:20":5,"13:50":6,"14:50":7,"15:50":8,"16:50":9,"17:50":10,"18:50":11,"19:50":12}

       var numberToHour = { 1: "8:30", 2: "9:30", 3: "10:30", 4: "11:30", 5: "12:50", 6: "13:50", 7: "14:50", 8: "15:50", 9: "16:50", 10: "17:50", 11: "18:50", 12: "19:50" }
       var NumberToValueInLecture = {1:"ID", 2:"CourseName", 3:"lecturer" , 4:"type" , 5:"classlec", 6: "day", 7:"startTime", 8:"endTime" }
       var NumberToValueInLectureHeb = {1:"מס הקורס", 2:"שם", 3:"מרצה" , 4:"סוג" , 5:"כתה", 6: "יום", 7:"שעת התחלה", 8:"שעת סיום" }
       var MyLectureInScheduleTable = [];


       $(function () {

           BuildCourseTable();
           BuildScheduleTable();
           // BuildLecturesTable();
           BuildBackToCourseListBtn();
       })
       function BuildBackToCourseListBtn()
       {
           var mainViewDiv = $("#MianView");
           var btn = document.createElement('input');
           btn.id = "btnBackToCoursesTable";
           btn.type = "button";
           btn.style = "display:none";
           btn.value = "Back to courses list";
           btn.onclick = ShowCourseTable;
           btn.className = "btn btn-info";
           mainViewDiv.append(btn);
       }
       function BuildCourseTable()
       {
           $.each(courseArray, function (coursIndex, cours) {
               var tr = $("<tr/>");
               //add function on click to show this course lecture
               tr.attr('onclick', "ShowAllLecturesOfCourse(" + cours.ID + ")");
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
       //this function show all th
       function ShowAllLecturesOfCourse(courseID)
       {
           correntCourseLecturesShownID = courseID;
           LoadAllLecturesOfCourse(courseID);
           //hide corses table , and show lecturer insted
           $("#tCourses").attr('style', "display:none");
           $("#divLecture").attr('style', "");
           $("#btnBackToCoursesTable").attr('style', "display:inline-block");
       }

       function LoadAllLecturesOfCourse(courseID)
       {
           $.each(lecturesArray, function (i, lecture) {
               if (lecture["ID"] == courseID) {
                   var lecturedic = new CreateLectureDictionary(lecture);
                   var tr = $("<tr/>"); // create new row for the table
                   for (var i = 8; i >= 1; i--)
                   {
                       var td = $("<td/>");
                       $(td).text(lecturedic[i]);
                         $(tr).append(td);
                   }
                   tr.attr('onclick', "LoadLectureIntoScheduleTable(this)");
                   $("#tLecture").find("tbody").append(tr);
               }

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
                   //td.text("row_" + rowNumber + "_column_" + dayNumber);
                   td.attr('id', "row_" + rowNumber + "_column_" + dayNumber);
                   td.attr('onclick', "OnCellInScheduleTableClick(this)");
                   //add buttom
                   var btn = document.createElement('input');
                   btn.type = "button";
                   btn.value = "Remove";
                   btn.style = "display:none";
                   btn.id = "btn_row_" + rowNumber + "_column_" + dayNumber
                   btn.className = "btn btn-info";
                   btn.classList.add("remove");

                   //create lambda expression for onclick event;
                   btn.onclick = function ()
                   {
                       RemoveLectureByCell(this);
                   };
                   td.append(btn);
                   tr.append(td);
               }
               var th = $("<th/>");
               th.text(numberToHour[rowNumber]);
               tr.append(th);
               $("#tScheduleLecture").find("tbody").append(tr);
           }

       }


       function RemoveLectureByCell(btnElement)
       {
           btnElement.style = "display:none";
           var cellId = btnElement.id.substring(4);  //substract the btn_
           var cellElement = document.getElementById(cellId);
           var PartialLectureDataFromCell = GetPartialLectureFromCell(cellElement);
           RemoveLecture(PartialLectureDataFromCell);
           
       }

       function RemoveLecture(partialLecture)
       {
           //find lecture in MyLectureInScheduleTable
           var removedLecture;
           for (var i = 0; i < MyLectureInScheduleTable.length;i++)
           {
               var equals = true;
               for (var j = 1; j <= Object.keys(partialLecture).length; j++)
               {
                   if (partialLecture[j] != MyLectureInScheduleTable[i][NumberToValueInLecture[j]])
                   {
                       equals = false;
                       break;
                   }
               }
               if (equals)
               {
                   removedLecture = MyLectureInScheduleTable.splice(i, 1);
                   removeLectureFromTable(removedLecture[0]);
                   return;
               }
           }
       }

       function removeLectureFromTable(removedLecture)
       {
           
           var lectureDay = removedLecture[NumberToValueInLecture[6]];
           var lectureStratTime = removedLecture[NumberToValueInLecture[7]];
           var lectureEndTime = removedLecture[NumberToValueInLecture[8]];

           var dayCellNum = dayToNumber[lectureDay];
           var startCellNum = hourToNumberStrart[lectureStratTime];
           var endCellNum = hourToNumberEnd[lectureEndTime];

           for (var i = startCellNum; i < endCellNum; i++)
           {
               var cellID = "row_" + i + "_column_" + dayCellNum;
               var dt = $("#" + cellID).eq(0);
               var dt = dt[0];
               //find label array
               var labelArray = $(dt).find("label");
               $.each(labelArray, function (labelIndex, label) {
                   label.remove();
               }
               );
            
           }
       }
       function OnCellInScheduleTableClick(element) {
           if (element.textContent != "")
           {
               ShowOnlyThisCellBtn(element);
           }
           GetPartialLectureFromCell(element);
       }
       function ShowOnlyThisCellBtn(element)
       {
           var cellBtnId = "btn_" + element.id;
           document.getElementById(cellBtnId).style = "display:inline-block";
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
       function BuildLecturesTable()
       {

           var mainViewDiv = $("#MianView");
           $.each(courseArray, function (coursIndex, cours) {
               var div = $("<div>" +coursIndex+ "</div>");
               $(div).attr('id', "div_" + cours.ID);
               $(div).attr('style', "display:none");
               //after we build the div, we build the lecture table itslef
               //BuildLectureTamplateTable(div,cours.ID);
               div.append($("#LecTb_" + cours.ID));
               mainViewDiv.append(div);
           });
           
       }
       function ShowCourseTable()
       {
           $("#tCourses").attr('style', "");
           $("#divLecture").attr('style', "display:none");
           $("#btnBackToCoursesTable").attr('style', "display:none");
           ClearLectureFromTable();
           clearLectureErDiv();
       }
       function ClearLectureFromTable() {
           var trArray = $("#tLecture").find("tbody tr");
           for(var i = 0; i<trArray.length ; i++)
           {
               $(trArray[i]).remove();
           }
       }

       function LoadLectureIntoScheduleTable(trElement) {
           clearLectureErDiv();
           var LectureDic = CreateLectureDictionaryFromRow(trElement);
           var ErrorText = "";
           IsLecturePlaceAvailable(LectureDic);
           IsLectureTypeAvailable(LectureDic);
           //verify no error
           var div = $("#LectureEr").eq(0);
           var label = $(div).find("label");
           if (!label.length)
           {
               InsertLectureToScheduleTable(LectureDic);
               //add success message
               
               var label = document.createElement("LABEL");
               label.style = "display:block;direction:rtl";
               label.className = "text-success";
               label.innerHTML = "ההרצאה נוספה בהצלחה";
               div.append(label);
           }
       }

       function AddErrorToLecture(ErrorText)
       {
           var div = $("#LectureEr").eq(0);
           var label = document.createElement("LABEL");
           label.style = "display:block;direction:rtl";
           label.className = "text-danger";
           label.innerHTML = ErrorText;
           div.append(label);
           
       }
       function clearLectureErDiv()
       {
            var div = $("#LectureEr").eq(0);
            var labelArray = $(div).find("label");
            $.each(labelArray, function (labelIndex, label) {
            label.remove();
               }
               );
       }
       function InsertLectureToScheduleTable(LectureDic)
       {
           //insert the lecture into the local var
       MyLectureInScheduleTable.push(ConvertLectureToScheduleLecture(LectureDic));
           //insert the lecture in to the cell
        InsertLectureIntoCell(LectureDic);

       }
       function ConvertLectureToScheduleLecture(LectureDic)
       {
           var lecture = {};
           for (var i = 1; i <= Object.keys(NumberToValueInLecture).length; i++)
           {
               lecture[NumberToValueInLecture[i]] = LectureDic[i];
           }
           return lecture;
       }
       function InsertLectureIntoCell(LectureDic)
       {
           var lectureDay = LectureDic[6];
           var lectureStratTime = LectureDic[7];
           var lectureEndTime = LectureDic[8];

           var dayCellNum = dayToNumber[lectureDay];
           var startCellNum = hourToNumberStrart[lectureStratTime];
           var endCellNum = hourToNumberEnd[lectureEndTime];

           for (var i = startCellNum; i < endCellNum; i++)
           {
               var cellID = "row_" + i + "_column_" + dayCellNum;
               var dt = $("#" + cellID).eq(0);
               var dt = dt[0];
               var string = "";
               //build label to fill the Lecture Data
               for (var j = 5; j >= 1; j--) {
                   var label = document.createElement("LABEL");
                   label.style = "display:block;direction:rtl";
                   label.innerHTML =  NumberToValueInLectureHeb[j]  + ":"+  LectureDic[j];
                   dt.insertBefore(label, dt.firstChild);
               }
            
           }
       }

       function IsLecturePlaceAvailable(lecturDic)
       {
           var lectureDay = lecturDic[6];
           var lectureStratTime = lecturDic[7];
           var lectureEndTime = lecturDic[8];

           var dayCellNum = dayToNumber[lectureDay];
           var startCellNum = hourToNumberStrart[lectureStratTime];
           var endCellNum = hourToNumberEnd[lectureEndTime];

           for (var i = startCellNum; i < endCellNum; i++)
           {
               var cellID = "row_" + i + "_column_" + dayCellNum;
               var dt = $("#" + cellID).eq(0);
               var label = $(dt).find("label");
               if (label.length) {
                   AddErrorToLecture(" לא ניתן להוסיף הרצאה זו בשל חפיפה בשעה" + ": " + numberToHour[i]);
                   return;
               }
           }
       }
       function IsLectureTypeAvailable(lecturDic)
       {
           var lectureId = lecturDic[1];
           var lectureType= lecturDic[4];


           for (var i = 0; i < MyLectureInScheduleTable.length; i++)
           {
               if (MyLectureInScheduleTable[i][NumberToValueInLecture[1]] == lectureId && MyLectureInScheduleTable[i][NumberToValueInLecture[4]] == lectureType ) {
                   AddErrorToLecture("לא ניתן להוסיף הרצאה זו בשל המצאות הרצאה מסוג זה" + ": " + lectureType);
                   return;
               }
           }
           
       }
       function CreateLectureDictionary(lecture)
       {
           var LectureDic = {};
           for (var i = 8; i >= 1; i--)
           {
               switch (i)
               {
               case 6:
                   var dayDictionary = lecture[NumberToValueInLecture[i]];
                   LectureDic[i] = (dayDictionary["name"]);

                   break;
               case 7 :
                   var dayDictionary = lecture[NumberToValueInLecture[i]];
                   LectureDic[i] = dayDictionary["hour"];
                   break;

               case 8 :
                   var dayDictionary = lecture[NumberToValueInLecture[i]];
                   LectureDic[i] = dayDictionary["hour"];
                   break;

               default:
                   LectureDic[i] = (lecture[NumberToValueInLecture[i]]);
                               
               }
           }
           return LectureDic;
       }
       function CreateLectureDictionaryFromRow(trElement)
       {
           var tdArray =  $(trElement).find("td");

           var LectureDic = {};
           var j = 1;
           for (var i = 7; i >= 0; i--) {
              
               LectureDic[j] = tdArray[i].textContent;
               j++;
           }
           return LectureDic;
       }

       function GetPartialLectureFromCell(cellElement)
       {

           var partialLectur = {};
           // get all the labels from the th
           var label = $(cellElement).find("label");
           for (var i = 1; i <= label.length; i++) {
               //get the value from the label in the table.
               var value = label[i-1].innerHTML.split(":")[1];
               partialLectur[i] = value;
           }
           return partialLectur;
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

<div id="MianView" class ="container" style="float:none;">
        <div style="float:none;">

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
   
          <%--margin div--%>
            </div>
    <div style="margin-top:100px;">
    </div>
<div style="float:none;width:100% ">

            <table id="tCourses"  class="table table-bordered table-sm" >
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

    <div id ="divLecture" style="float:none;">

        <table id="tLecture"  class="table table-bordered table-sm" style="margin-top:20px;">
            <thead>
            <tr>
                <th style="width:120px">endTime</th>
                <th style="width:120px">startTime</th>
                <th style="width:120px">day</th>
                <th style="width:120px">classlec</th>
                <th style="width:120px">type</th>
                <th style="width:120px">lecturer</th>
                <th style="width:120px">CourseName</th>
                <th style="width:30px">ID</th>

            </tr>
            </thead>
            <tbody>
            </tbody>
        </table>
        <div id="LectureEr" style="float:right" >

        </div>
    </div>
    

    </div>
</body>
</html>
