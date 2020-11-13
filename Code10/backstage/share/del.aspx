<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="del.aspx.cs" Inherits="Code10.backstage.share.del" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link rel="stylesheet" href="../css/bootstrap4.5.3.css">
    <script src="../js/jquery3.5.1.js"></script>
    <script src="../js/use.js"></script>
    <link rel="stylesheet" href="../css/use.css">
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="jumbotron ">
                <h1 class="display-4">Hello, world!</h1>
                <p class="lead">Delete table data in user table</p>
                <hr class="my-4">
                <p>Slave:<%=Session["Table"]%></p>
                <p>Slave_Id:<%=Request["Id"]%></p>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="删除" BorderStyle="None" style="color:red" />
                <a href="javascript:history.go(-1);" role="button">取消</a>
            </div>
        </div>
        <script>
            
        </script>
    </form>
</body>
</html>
