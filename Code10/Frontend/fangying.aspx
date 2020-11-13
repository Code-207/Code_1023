<%@ Page Title="" Language="C#" MasterPageFile="~/Frontend/Site1.Master" AutoEventWireup="true" CodeBehind="fangying.aspx.cs" Inherits="Code10.Frontend.fangying" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css1/style.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="jqq">
        <div class="jqq_1">
            <ul>
                <li class="li_9">放映厅</li>
                <li class="li_7">|</li>
                <li class="li_8"><a href="#">近期活动</a></li>
                <li class="li_7">|</li>
                <li class="li_8"><a href="zixun.aspx">新闻中心</a></li>
            </ul>
        </div>
    </div>

    <div class="clear"></div>
    <div class="xia">
        <div class="xia_1">
            <div class="xia_1_1">
                <h1>赢鼎资讯</h1>
                <h2>Welcome to yielding education</h2>
            </div>
            <div class="xia_1_2">
                <ul>
                    <li>当前位置：</li>
                    <li><a href="Index.aspx">首页</a> &gt;</li>
                    <li><a href="guanyv.aspx">关于我们</a> &gt;</li>
                    <li class="li_6">&nbsp;<a href="fangying.aspx">放映厅</a></li>
                </ul>
            </div>
        </div>
        <div class="xia_2">
            <div class="xia_2_1">
                <h2><a href="zixuns.aspx"><%=Fy.fangying_title %></a><span>Time: <%=Fy.fangying_time %></span></h2>
            </div>
            <div class="xia_3">
                <ul>
                    <li><%=Fy.fangying_text %></li>
                </ul>
            </div>
            <div class="xia_4">
                <div class="xia_4_1"><a href="fangyings.aspx">
                    <img width="520px" height="451px" src="<%=Fy.fangying_imageurl %>" /></a></div>
            </div>
            <div class="xia_5">
                <div class="xia_5_1"><a href="fangyings.aspx">
                    <img src="../webform项目/images1/fanhui.jpg" /></a></div>
            </div>
        </div>

    </div>
</asp:Content>
