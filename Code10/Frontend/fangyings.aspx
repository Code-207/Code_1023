<%@ Page Title="" Language="C#" MasterPageFile="~/Frontend/Site1.Master" AutoEventWireup="true" CodeBehind="fangyings.aspx.cs" Inherits="Code10.Frontend.fangyings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../webform项目/css1/style.css" rel="stylesheet" type="text/css" />
    <style>
        body {
            overflow:auto;
        }
    </style>
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

    <div class="xia">
        <div class="xia_1">
            <div class="xia_1_1">
                <h1>赢鼎资讯</h1>
                <h2>Welcome to yingding education</h2>
            </div>
            <div class="xia_1_2">
                <ul>
                    <li>当前位置：</li>
                    <li><a href="Index.aspx">首页</a> &gt;</li>
                    <li><a href="guanyv.aspx">关于我们</a> &gt;</li>
                    <li class="li_6">&nbsp;放映厅</li>
                </ul>
            </div>
        </div>
        <asp:Repeater runat="server" ID="RFangYing">
            <ItemTemplate>
                <div class="ying">
                    <div class="ying_1">
                        <div class="ying_1_1"><a href="fangying.aspx?id=<%#Eval("id") %>">
                            <img width="144px" height="91px" src="<%# Eval("fangying_imageurl")%>" /></a></div>
                        <div class="ying_1_2">
                            <h2><a href="fangying.aspx?id=<%#Eval("id") %>"><%# Eval("fangying_title")%>
                            </a></h2>
                            <span>Time: <%# Eval("fangying_time")%></span>
                        </div>
                    </div>
                    <div class="ying_2">
                        <div class="ying_1_1"><a href="fangying.aspx?id=<%#Eval("id") %>">
                            <img width="144px" height="91px" src="<%# Eval("fangying_imageurl")%>" /></a></div>
                        <div class="ying_1_2a">
                            <h2><a href="fangying.aspx?id=<%#Eval("id") %>"><%#Eval("fangying_title")%></a></h2>
                            <span>Time:  <%# Eval("fangying_time")%></span>
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
    </div>
</asp:Content>
