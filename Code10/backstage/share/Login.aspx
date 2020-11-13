<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Code10.backstage.share.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Login</title>
    <link rel="stylesheet" href="../css/bootstrap4.5.3.css">
    <style>
        #body-center {
            width: 22%;
            background-color: rgba(255,255,255,.5);
            border: 15px rgba(182, 84, 149,.5) solid;
            border-radius: 5px;
            padding: 20px 0;
            box-shadow: 10px 10px 10px #000;
        }
    </style>
    <script src="../js/jquery3.5.1.js"></script>
    <script src="../js/use.js"></script>
    <link rel="stylesheet" href="../css/use.css" />
</head>
<body>
    <form id="form1" runat="server">

        <div class="body-center" id="body-center">
            <image class="img-s" width="72" height="72" src="../img/fate.png" />
            <div>
                <h1>Login in</h1>
                <p><em>No operation can be performed without logging in</em></p>
            </div>
            <p class="br"></p>
            <div>
                <asp:TextBox ID="Acc" runat="server" class="form-control form-control-lg" placeholder="账号"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ErrorMessage="请输入账号" ControlToValidate="Acc" ForeColor="#FF6666"></asp:RequiredFieldValidator>
                <p class="br"></p>
                <asp:TextBox ID="Pwd" runat="server" class="form-control form-control-lg" placeholder="密码"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ErrorMessage="请输入账号" ControlToValidate="Pwd" ForeColor="#FF6666"></asp:RequiredFieldValidator>
                <p class="br"></p>
                <div class="form-group form-check">
                    <input type="checkbox" class="form-check-input" id="exampleCheck1" />
                    <label class="form-check-label" for="exampleCheck1">Check me out</label>
                </div>
                <div class="center-body">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" class="btn btn-primary " />
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" class="btn btn-primary left-30" />
                </div>
            </div>

        </div>

    </form>
</body>
</html>
