<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Server.aspx.cs" Inherits="LAB8.WebForm" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <%--bootstrapcdn - in google - this is the palce we took this link, for the css class--%>
    <link rel ="stylesheet" href ="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" />
    <script src="inc/jquery-3.0.0.min.js"></script>
<%--    <script>

        $(function () {
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
                    CreateTable(s);
                },
                error: function (er) {
                    console.log(er);
                }
            });

        })
         </script>--%>

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
            
        </div>
    </form>

</body>
</html>
