<%@ Page Title="" Language="C#" MasterPageFile="~/backstage/BackStage.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Code10.backstage.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link rel="stylesheet" href="../css/bootstrap4.5.3.css">
    <script src="../js/jquery3.5.1.js"></script>
    <script src="../js/use.js"></script>
    <link rel="stylesheet" href="../css/use.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div> 
                <div class="jumbotron">
                    <h1 class="display-4">首页</h1> 
                    <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                </ol>
            </nav>
                      <hr class=" my-4">
                      <div class="table-responsive">
                        <table class="table">
                            <caption>List of users</caption>
                            <thead>
                              <tr>
                                <th scope="col">#</th>
                                <th scope="col">First</th>
                                <th scope="col">Last</th>
                                <th scope="col">Handle</th>
                                <th>操作</th>
                              </tr>
                            </thead>
                            <tbody>
                              <tr>
                                <th scope="row">1</th>
                                <td>Mark</td>
                                <td>Otto</td>
                                <td>@mdo</td>
                                <td>
                                    <a href="add.html">add/</a>
                                    <a href="del.html">del/</a>
                                    <a href="upt.html">upt</a>
                              </tr>
                            </tbody>
                          </table>
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
            $(".breadcrumb-item:last>a").css("color", "#000")

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
            </div>
</asp:Content>
