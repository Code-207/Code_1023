<%@ Page Title="" Language="C#" MasterPageFile="~/Frontend/Site1.Master" AutoEventWireup="true" CodeBehind="guanyus.aspx.cs" Inherits="Code10.Frontend.guanyus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../webform项目/css1/style.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="jqq">
        <div class="jqq_1">
            <ul>
                <li class="li_11"><a href="tuandui.aspx">赢鼎团队</a></li>
                <li class="li_7">|</li>
                <li class="li_8"><a href="wenhua.aspx">赢鼎文化</a></li>
                <li class="li_7">|</li>
                <li class="li_13">赢鼎简介</li>
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
                    <li>
                    当前位置：<li><a href="Index.aspx">首页</a> ></li>
                    <li><a href="guanyv.aspx">关于我们</a> ></li>
                    <li class="li_6">&nbsp;赢鼎简介</li>
                </ul>
            </div>
        </div>
        <div class="xia_2s">
            <div class="xia_2as"><a href="#">
                <img width="235" height="347" src="<%=Yd.imgurl %>" /></a></div>
            <div class="xia_2a_1">
                <ul>
                    <li>
                        <%=Yd.content %>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</asp:Content>
