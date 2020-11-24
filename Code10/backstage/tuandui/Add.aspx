<%@ Page Title="" Language="C#" MasterPageFile="~/backstage/AddSite.Master" AutoEventWireup="true" CodeBehind="Add.aspx.cs" Inherits="Code10.backstage.tuandui.Add" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../css/bootstrap4.5.3.css">
    <script src="../js/jquery3.5.1.js"></script>
    <script src="../js/use.js"></script>
    <link rel="stylesheet" href="../css/use.css">
    <style>
        #body-center {
            width: 40%;
            background-color: rgba(219, 190, 190, 0.5);
            border-radius: 5px;
            padding: 20px 0;
            box-shadow: 10px 10px 10px #000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <label for="Name" class="col-sm-3 col-form-label h4">书名:</label>
    <div class="col-sm-9">
        <asp:TextBox ID="Name" runat="server" class="form-control form-control-add"></asp:TextBox>
    </div>
    <label for="position" class="col-sm-3 col-form-label h4">职位:</label>
    <div class="col-sm-9">
        <asp:TextBox ID="position" runat="server" class="form-control form-control-add"></asp:TextBox>
    </div>
    <label for="Intof" class="col-sm-3 col-form-label h4">Intof:</label>
    <div class="col-sm-9">
        <asp:TextBox ID="Intof" runat="server" class="form-control form-control-add"></asp:TextBox>
    </div>
    <div class="container top-10">
        <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" class="btn btn-primary" />
        <asp:Button ID="Button2" runat="server" Text="Logon" OnClick="Button2_Click" class="btn btn-primary left-30" />
    </div>
</asp:Content>