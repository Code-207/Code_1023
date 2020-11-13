<%@ Page Title="" Language="C#" MasterPageFile="~/Frontend/Site1.Master" AutoEventWireup="true" CodeBehind="guanyv.aspx.cs" Inherits="Code10.Frontend.guanyv" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../webform项目/css1/style.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="jqq">
         <div class="jqq_1">
            <ul>
                <li class="li_14">赢鼎团队</li>
                <li class="li_7">|</li>
                <li class="li_8"><a href="wenhua.aspx">赢鼎文化</a></li>
                <li class="li_7">|</li>
                <li class="li_8"><a href="guanyus.aspx">赢鼎简介</a></li>
                <li class="li_7">|</li>
                <li class="li_8"><a href="guanyv.aspx">总裁寄语</a></li>
            </ul>
        </div>
    </div>

    <div class="xia">
        <div class="xia_1">
            <div class="xia_1_1">
                <h1>关于我们</h1>
                <h2>Welcome to yingding education</h2>
            </div>
            <div class="xia_1_2">
                <ul>
                    <li>当前位置：</li>
                    <li><a href="index.aspx">首页</a> ></li>
                    <li><a href="#">关于我们</a> ></li>
                    <li class="li_6">&nbsp;总裁寄语</li>
                </ul>
            </div>
        </div>
        <div class="xia_2s">
            <div class="xia_2a"><a href="#">
                <img width="235" height="347" src="<%=Code10.Frontend.guanyv.Pre.imgurl %>" /></a></div>
            <div class="xia_2a_1">
                <ul><li>
                    <%=Code10.Frontend.guanyv.Pre.content %></li>
                </ul>
            </div>
        </div>
    </div>
</asp:Content>

