<%@ Page Title="" Language="C#" MasterPageFile="~/backstage/BackStage.Master" AutoEventWireup="true" CodeBehind="Indent.aspx.cs" Inherits="Code10.backstage.indent.Indent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../css/bootstrap4.5.3.css">
    <script src="../js/jquery3.5.1.js"></script>
    <script src="../js/use.js"></script>
    <link rel="stylesheet" href="../css/use.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div class="jumbotron">
            <h1 class="display-4">新增用户</h1>
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                </ol>
            </nav>
            <hr class=" my-4">
            <div class="table-responsive">
                <table class="table">
                    <caption class="ml-auto">
                        <div class="float-left">
                            <nav aria-label="Page navigation example">
                                <ul class="pagination">
                                    <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                                    <%
                        for (int i = 0; i < page ; i++)
                        {
                            Response.Write("<li class='page-item'><a class='page-link' href='Indent.aspx?id="+(i+1)+"'>"+(i+1)+"</a></li>");
                        } %>

                                    <li class="page-item"><a class="page-link" href="#">Next</a></li>
                                </ul>
                            </nav>
                        </div>
                    </caption>
                    <thead>
                        <tr>
                            <th scope="col">编号</th>
                            <th scope="col">联系电话</th>
                            <th scope="col">产品信息</th>
                            <th scope="col">电子邮箱</th>
                            <th scope="col">邮寄地址</th>
                            <th>操作</th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater  ID="rep" runat="server">
                            <ItemTemplate>                                
                                <tr>
                                    <th scope="row"><%#Eval("ID") %></th>
                                    <td><%#Eval("indent_phone") %></td>
                                    <td class="root"><%#Eval("product_id")%></td>
                                <td class="root"><%#Eval("indent_mail")%></td>
                                    <td class="root"><%#Eval("indent_site")%></td>
                                    <td>
                                        <a href="../share/del.aspx?id=<%#Eval("ID") %>">del/</a>
                                        <a href="upt.html">upt</a>
                                        </td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </tbody>
                </table>
            </div>

        </div>
    </div>
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

                console.log(arr[i]);
                $(".breadcrumb").append('<li class="breadcrumb-item"><a href="#">' + arr[i] + '</a></li>')
            }
            $(".breadcrumb>li:last").css("aria-curren", "page")

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
            $(tws).click(function () {
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
            })
        })
        $('.left-title').css('height', $(window).height() - $('.top-title').height() - 3)
        $('.right-index').css('height', $(window).height() - $('.top-title').height() - 3)
    </script>
</asp:Content>
