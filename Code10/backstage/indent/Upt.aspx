<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Upt.aspx.cs" Inherits="Code10.backstage.indent.Upt" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    
    <link href="../css/bootstrap4.5.3.css" rel="stylesheet" />
    <script src="../js/jquery3.5.1.js"></script>
    <link href="../css/up.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class=" container">
            <div class="jumbotron">
                <h1 class="display-4">Hello, world!</h1>
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                    </ol>
                </nav>
                <hr class="my-4">
                <div class="main row">
                    <div class="col-12" style="margin: 0 auto">
                        <br />
                            <div class="form-group">
                                <label class="col-form-label">indent_name:</label>
                                <asp:TextBox runat="server" ID="indent_name"></asp:TextBox>
                            </div>
                        <br />
                        <div class="form-group">
                            <label class="col-form-label">indent_phone</label>
                            <asp:TextBox runat="server" ID="indent_phone"></asp:TextBox>
                        </div>
                        <br />
                        <div class="form-group">
                            <label class="col-form-label">indent_mail：</label>
                            <asp:TextBox runat="server" ID="indent_mail"></asp:TextBox>
                        </div>
                            <asp:Button OnClientClick="return discount()" OnClick="Button1_OnClick" ID="Button1" class="btn btn-primary btn-lg right-80" runat="server"  Text="Enter" rol="button" />
                        <a class="lower-right" href="#" runat="server" role="button">返回</a>
                        <div class="form-group">
                            <label for="exampleInputPassword1">地址</label>
                            <div class="form-control bg-none">
                                <select id="provice" class="select">
                                    <option><%=Dizhi[0]%></option>
                                </select>
                                <select id="city" class="select">
                                    <option><%=Dizhi[1]%></option>
                                </select>
                                <select id="area" class="select">
                                    <option><%=Dizhi[2]%></option>
                                </select>
                                <asp:TextBox ID="TextBox1" runat="server" class="form-control float-left" placeholder="详细地址:"></asp:TextBox>
                                <asp:TextBox ID="dis" style="display: none" runat="server" class="form-control float-left" placeholder="详细地址:"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
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

        function discount() {
            var x = $('#provice').val() + '/' + $('#city').val() + '/' + $('#area').val() + '/' + $("#TextBox1").val();
            alert(x);
            console.log(x);
            $('#dis').val(x);
        }
        GetUrlRelativePath();
        $(document).ready(function () {

            $.ajax({
                url: "../json/site.json",
                type: "get",
                dataType: "json",
                success: function (data) {
                    for (var key in data) {
                        console.log(key);
                        $("#provice").append("<option value=" + key + ">" + key + "</option>");
                    }

                    $("#provice").change(function () {
                        var now_provice = $("#provice option:selected").val();
                        $("#city").empty();
                        $("#city").append("<option>请输入城市</option>");
                        for (var key in data[now_provice]) {
                            $("#city").append("<option value=" + key + ">" + key + "</option>");
                        }

                        $("#city").change(function () {
                            var now_city = $("#city option:selected").val();
                            $("#area").empty();
                            $("#area").append("<option>请输入地区</option>");
                            for (var k in data[now_provice][now_city]) {
                                console.log(k);
                                $("#area").append("<option value=" + data[now_provice][now_city][k] + ">" + data[now_provice][now_city][k] + "</option>");
                            }
                        })
                    })
                }
            })
        });
    </script>
</html>

