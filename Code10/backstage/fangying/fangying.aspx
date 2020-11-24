<%@ Page Title="" Language="C#" MasterPageFile="~/backstage/BackStage.Master" AutoEventWireup="true" CodeBehind="fangying.aspx.cs" Inherits="Code10.backstage.fangying.fangying" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../css/bootstrap4.5.3.css">
    <script src="../js/jquery3.5.1.js"></script>
    <script src="../js/bootstrap.js"></script>
    <script src="../js/use.js"></script>
    <link rel="stylesheet" href="../css/use.css">
    <link href="../css/list.css" rel="stylesheet" />
    <title>咨询</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h1 class="center-title h-auto">Admin</h1>
        <asp:Repeater ID="rep" runat="server">
            <ItemTemplate>
                <div class="bor row">
                <div class="col-3">
                    <img class="I-L" src="../img/fangying/<%#Eval("fangying_imageurl")%>"/>
                </div>
                <div class="col-9">
                    <h4><%#Eval("fangying_title")%></h4>
                    <small><%#Eval("fangying_time")%>
                    </small>
                    <br />
                    <div style="position:absolute; bottom: 1%;right: 1%">
                        <a class="h6" href="../share/del.aspx?id=<%#Eval("id")%>">删除</a>
                        <a class="h6" href="upt.aspx?id=<%#Eval("id")%>">修改</a>
                    </div>
                   
                </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    <nav aria-label="Page navigation example" class="pull-right">
        <ul class="pagination">
            <li class="page-item"><a class="page-link" href="#">Previous</a></li>
            <%
                //分页行数
                for (int i = 0; i < Count; i++)
                {
                    Response.Write("<li class='page-item'><a class='page-link' href='fangying.aspx?id=" + (i + 1) + "'>" + (i + 1) + "</a></li>");
                } %>
            <li class="page-item"><a class="page-link" href="#">Next</a></li>
            <li class="page-item"><a class="page-link active" href="../fangying/Add.aspx">添加</a></li>
            
        </ul>
    </nav>
    <script>
        function GetUrlRelativePath() {
            var url = document.location.toString();
            var arrUrl = url.split("//");

            var start = arrUrl[1].indexOf("/");
            var relUrl = arrUrl[1].substring(start);//stop省略，截取从start开始到结尾的所有字符

            if (relUrl.indexOf("?") != -1) {
                relUrl = relUrl.split("?")[0];
            }
            var arr = relUrl.split("/");
            for (var i = 1; i < arr.length; i++) {
                if (i == arr.length - 1) {
                    $(".breadcrumb").append('<li class="breadcrumb-item" aria-current="page">' + arr[i] + '</li>');
                } else {
                    console.log(arr[i]);
                    $(".breadcrumb").append('<li class="breadcrumb-item"><a href="#">' + arr[i] + '</a></li>');
                }

            }

            return relUrl;
        }
        GetUrlRelativePath();
        if ($(".root").text() == 0) {
            $(".root").text("超级管理员")
        } else {
            $(".root").text("普通管理员")
        }

        $(".bi-chevron-up").hide()
        $('.left-title > div').each(function (y) {
            console.log(y)
            var tw = "tw" + y;
            var tws = "." + tw;
            $(this).addClass(tw);
            let i = 0;
            $(tws).click(function() {
                if (i == 0) {
                    $(tws + ">.left-down>.left-down-click>.bi-chevron-down").hide();
                    $(tws + ">.left-down>.left-down-click>.bi-chevron-up").show();
                    $(tws + "> .left-up").show(100)
                    console.log($(tws + "> .left-up").html());
                    i++;
                } else {
                    $(tws + ">.left-down>.left-down-click>.bi-chevron-down").show();
                    $(tws + ">.left-down>.left-down-click>.bi-chevron-up").hide();
                    $(tws + "> .left-up").hide(100)
                    console.log('隐藏ed')
                    i = 0;
                }
            });
        })
        $('.left-title').css('height', $(window).height() - $('.top-title').height() - 3)
        $('.right-index').css('height', $(window).height() - $('.top-title').height() - 3)
    </script>
</asp:Content>