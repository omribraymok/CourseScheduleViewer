<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Server.aspx.cs" Inherits="LAB8.WebForm" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <%--bootstrapcdn - in google - this is the palce we took this link, for the css class--%>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" />
    <script src="inc/jquery-3.0.0.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <asp:Panel runat="server" ID="pnlLogin">

                <div style="width: 300px; margin: 50px auto">
                    <h1>Login form</h1>
                    <div>
                        <label>UserName</label>
                        <asp:TextBox runat="server" ID="tbUsername" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                            ControlToValidate="tbUsername" ForeColor="Red"
                            ErrorMessage="Please insert UserName"></asp:RequiredFieldValidator>
                    </div>

                    <div>
                        <label>Password</label>
                        <asp:TextBox runat="server" ID="tbPassword" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                            ControlToValidate="tbPassword" ForeColor="Red"
                            ErrorMessage="Please insert password"></asp:RequiredFieldValidator>
                    </div>

                    <div style="margin-top: 20px">
                        <asp:Button runat="server" ID="btnLogin" CssClass="btn btn-info" Text="submit" OnClick="btnLogin_Click"></asp:Button>

                    </div>

                    <div>
                        <asp:Label runat="server" ID="lbError" CssClass="text-warning" Text="Worng Username or Password"></asp:Label>
                    </div>
                    <div>
                        dont have an account? :<b class="bu"></b><asp:LinkButton runat="server" CausesValidation="false"
                            OnClick="goToRegister_Click" Text="Register"></asp:LinkButton>
                    </div>

                                        <div>
                        <asp:Label runat="server" ID="SuccessRegister" CssClass="text-success" Text="Register successful , please Login" style = "font-size: 20px" Visible="false"></asp:Label>
                    </div>

                </div>
            </asp:Panel>

        </div>


        <div class="container" style="width: 300px; margin: 50px auto">
            <asp:Panel runat="server" ID="pnlRegistr" Visible="false">

                <h1>Register form</h1>
                <div>
                    <label>UserName</label>
                    <asp:TextBox runat="server" ID="tbUsernameReg" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator" runat="server"
                        ControlToValidate="tbUsernameReg" ForeColor="Red"
                        ErrorMessage="Please insert UserName"></asp:RequiredFieldValidator>
                </div>

                <div>
                    <label>Password</label>
                    <asp:TextBox runat="server" ID="tbPasswordReg" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                        ControlToValidate="tbPasswordReg" ForeColor="Red"
                        ErrorMessage="Please insert password"></asp:RequiredFieldValidator>
                </div>
        </div>

        <div style="margin-top: 20px">
            <asp:Button runat="server" ID="btnRegister" CssClass="btn btn-info" Text="submit" OnClick="btnRegister_Click"></asp:Button>
        </div>

        <div>
            <asp:Label runat="server" ID="lbErrorReg" CssClass="text-warning" Text=" Username is already exist "></asp:Label>
        </div>

        <div>
            Remember your account? :<b class="bu"></b><asp:LinkButton runat="server" CausesValidation="false"
                OnClick="goToLogin_Click" Text="Login"></asp:LinkButton>
        </div>

        </asp:Panel>
         </div>
    </form>


</body>
</html>
