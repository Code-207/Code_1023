<%@ Page Title="" Language="C#" MasterPageFile="~/Frontend/Site1.Master" AutoEventWireup="true" CodeBehind="tuandui.aspx.cs" Inherits="Code10.Frontend.tuandui" %>

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
                    <li>当前位置：</li>
                    <li><a href="index.aspx">首页</a> ></li>
                    <li><a href="#">关于我们</a> ></li>
                    <li class="li_6">&nbsp;赢鼎团队</li>
                </ul>
            </div>
        </div>
        <asp:Repeater runat="server" ID="tuanduied">
            <ItemTemplate>
                <div class="tuandui">
                    <div class="tuandui_1">
                        <img width="277" height="172" src="<%#Eval("iamgeurl") %>" />
                    </div>
                    <div class="tuandui_2">
                        <h2><a href="#"><%#Eval("name") %></a></h2>
                        <ul>
                            <%#Eval("intof") %>
                        </ul>
                    </div>
            </div>
            </ItemTemplate>
        </asp:Repeater>
        
    <div class="ye"></div>
</asp:Content>
