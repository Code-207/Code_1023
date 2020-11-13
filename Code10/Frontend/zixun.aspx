<%@ Page Title="" Language="C#" MasterPageFile="~/Frontend/Site1.Master" AutoEventWireup="true" CodeBehind="zixun.aspx.cs" Inherits="Code10.Frontend.zixun" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../webform项目/css1/style.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="jqq">
        <div class="jqq_1">
            <ul>
                <li class="li_15"><a href="#">放映厅</a></li>
                <li class="li_7">|</li>
                <li class="li_13">近期活动</li>
                <li class="li_7">|</li>
                <li class="li_8"><a href="#">新闻中心</a></li>
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
                    <li><a href="index.aspx">首页</a> ></li>
                    <li><a href="#">赢鼎资讯</a> ></li>
                    <li class="li_6">&nbsp;新闻中心</li>
                </ul>
            </div>
        </div>
        <asp:Repeater ID="rep" runat="server">
            <ItemTemplate>
                <div class="ying">
                    <div class="ying_1">
                        <div class="ying_1_1"><a href="zixuns.aspx?id=<%#Eval("id") %>">
                            <img src="<%# Eval("fangying_imageurl")%>" /></a></div>
                        <div class="ying_1_2">
                            <h2><a href="zixuns.aspx?id=<%#Eval("id") %>"><%# Eval("fangying_title")%></a></h2>
                            <ul>
                                <li>
                                    <a href="#"><%# Eval("fangying_title")%></a>
                                </li>
                            </ul>
                        </div>
                        <div class="ying_1_3">Time: <%# Eval("fangying_time")%></div>
                    </div>
                    <div class="ying_2">
                        <div class="ying_1_1"><a href="zixuns.aspx?id=<%#Eval("id")%>">
                        <img src="zixuns.aspx?id=<%#Eval("id") %>" /></a></div>
                        <div class="ying_1_2a">
                            <h2><a href="#"><%# Eval("fangying_title")%></a></h2>
                            <ul>
                                <li><a href="#">2月16日，赢鼎教育高考报考学分享会在吉林市站前国际大酒店圆满落幕，赢鼎教育高级讲师，资深高考报考、学业、职业规划师……</a></li>
                            </ul>
                        </div>
                        <div class="ying_1_3">Time: <%# Eval("fangying_time")%></div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>

        <div class="ye"></div>
    </div>
</asp:Content>
