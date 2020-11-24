<%@ Page Language="C#" CodeBehind="Upt.aspx.cs" Inherits="Code10.backstage.jieshu.Upt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Title</title>
</head>
<body>
<form id="HtmlForm" runat="server">
    <div>
          <div class=" container">
        <div class="jumbotron">
            <h1 class="display-4">Hello, world!</h1>
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                </ol>
            </nav>
            <hr class="my-4">
            <div class="main row">
                <div class="col-md-3">
                    <img
                        src="https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3844565657,1260688401&fm=26&gp=0.jpg" />
                </div>
                <div class="col-md-9">
                    <form>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Name:</label>
                            <input type="email" class="form-control" id="exampleInputEmail1"
                                aria-describedby="emailHelp">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Email address</label>
                            <input type="email" class="form-control" id="exampleInputEmail1"
                                aria-describedby="emailHelp">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">传真</label>
                            <input type="password" class="form-control" id="exampleInputPassword1">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">电话</label>
                            <input type="password" class="form-control" id="exampleInputPassword1">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">地址</label>
                            <div class="form-control bg-none">
                                <select class="select" id="provice" name="s_dprovince">
                                    <option value="">--请选择省--</option>
                                </select>
                                <select class="select" id="city" name="s_dcity">
                                    <option value="">--请选择市--</option>
                                </select>
                                <select class="select" id="area" name="s_dcounty" οnchange="getTown();">
                                    <option value="">--请选择区县--</option>
                                </select>
                                <input class="form-control float-left" placeholder="详细地址:">
                                <input id="town1" name="town1" type="hidden" value="" />
                                 <input id="address" name="address" type="hidden" value="" />
                            </div>

                        </div>
                    </form>
                </div>
            </div>
            <a class="btn btn-primary btn-lg right-80" href="#" role="button">确定修改</a>

            <a class="lower-right" href="#" role="button">返回</a>
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
        $(document).ready(function(){  
			 
             $.ajax({
                 url:"json/site.json",
                 type:"get",
                 dataType:"json",
                 success:function(data){
                     for(var key in data){
                         console.log(key);
                         $("#provice").append("<option value="+key+">"+key+"</option>");
                     }
 
                     $("#provice").change(function(){
                         var now_provice=$("#provice option:selected").val();
                         $("#city").empty();
                         $("#city").append("<option>请输入城市</option>");
                         for(var key in data[now_provice]){
                             $("#city").append("<option value="+key+">"+key+"</option>");
                         }
 
                         $("#city").change(function(){
                             var now_city=$("#city option:selected").val();
                             $("#area").empty();
                             $("#area").append("<option>请输入地区</option>");
                             for(var k in data[now_provice][now_city]){
                                 console.log(k);
                                 $("#area").append("<option value="+data[now_provice][now_city][k]+">"+data[now_provice][now_city][k]+"</option>");
                             }
                         })
                     })
                 }
             })     
         });
    </script>
    </div>
</form>
</body>
</html>