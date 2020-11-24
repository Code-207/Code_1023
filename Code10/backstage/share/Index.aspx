<%@ Page Title="" Language="C#" MasterPageFile="~/backstage/BackStage.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Code10.backstage.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link rel="stylesheet" href="../css/bootstrap4.5.3.css">
    <script src="../js/jquery3.5.1.js"></script>
    <script src="../js/use.js"></script>
    <link rel="stylesheet" href="../css/use.css">
    <script src="https://code.highcharts.com/highcharts.js"></script>
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
                          <div id="container" style="width: 550px; height: 400px; margin: 0 auto"></div>
                      </div>
                    <script language="JavaScript">
                        $(document).ready(function () {
                            var title = {
                                text: '订单管理'
                            };
                            var subtitle = {
                                text: 'Share/Index'
                            };
                            var xAxis = {
                                categories: ['一月', '二月', '三月', '四月', '五月', '六月'
                                    , '七月', '八月', '九月', '十月', '十一月', '十二月']
                            };
                            var yAxis = {
                                title: {
                                    text: '人员详情'
                                },
                                plotLines: [{
                                    value: 0,
                                    width: 1,
                                    color: '#808080'
                                }]
                            };

                            var tooltip = {
                                valueSuffix: '\xB0C'
                            }

                            var legend = {
                                layout: 'vertical',
                                align: 'right',
                                verticalAlign: 'middle',
                                borderWidth: 0
                            };

                            var series = [
                                {
                                    name: '商品订单',
                                    data: [0, 0, 0, 0, 0, 0, 0,
                                        0, 0, 0, 4, 0]
                                },
                                {
                                    name: '借书订单',
                                    data: [0, 0, 0, 0, 0, 0, 0,
                                        0, 0, 0, 15, 0]
                                },
                                {
                                    name: '人员人数',
                                    data: [0, 0, 0, 0, 0, 0, 0,
                                        0, 0, 0, 12, 0]
                                }
                            ];

                            var json = {};

                            json.title = title;
                            json.subtitle = subtitle;
                            json.xAxis = xAxis;
                            json.yAxis = yAxis;
                            json.tooltip = tooltip;
                            json.legend = legend;
                            json.series = series;

                            $('#container').highcharts(json);
                        });
                    </script>
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
         
<!-- 去掉 pre 前面的空格 -->
< pre id="tsv" style="display:none">
Browser Version   Total Market Share
Microsoft Internet Explorer 8.0  26.61%
Microsoft Internet Explorer 9.0  16.96%
Chrome 18.0 8.01%
Chrome 19.0 7.73%
Firefox 12  6.72%
Microsoft Internet Explorer 6.0  6.40%
Firefox 11  4.72%
Microsoft Internet Explorer 7.0  3.55%
Safari 5.1  3.53%
Firefox 13  2.16%
Firefox 3.6 1.87%
Opera 11.x  1.30%
Chrome 17.0 1.13%
Firefox 10  0.90%
Safari 5.0  0.85%
Firefox 9.0 0.65%
Firefox 8.0 0.55%
Firefox 4.0 0.50%
Chrome 16.0 0.45%
Firefox 3.0 0.36%
Firefox 3.5 0.36%
Firefox 6.0 0.32%
Firefox 5.0 0.31%
Firefox 7.0 0.29%
Proprietary or Undetectable   0.29%
Chrome 18.0 - Maxthon Edition 0.26%
Chrome 14.0 0.25%
Chrome 20.0 0.24%
Chrome 15.0 0.18%
Chrome 12.0 0.16%
Opera 12.x  0.15%
Safari 4.0  0.14%
Chrome 13.0 0.13%
Safari 4.1  0.12%
Chrome 11.0 0.10%
Firefox 14  0.10%
Firefox 2.0 0.09%
Chrome 10.0 0.09%
Opera 10.x  0.09%
Microsoft Internet Explorer 8.0 - Tencent Traveler Edition  0.09%
< /pre><!-- 去掉 pre 前面的空格 -->
</body>
</html>
            </div>
</asp:Content>
