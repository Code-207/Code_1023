<%@ Page Title="" Language="C#" MasterPageFile="~/Frontend/Site1.Master" AutoEventWireup="true" CodeBehind="jieshus.aspx.cs" Inherits="Code10.Frontend.jieshus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../webform项目/css1/style.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="jqq">
        <div class="jqq_1">
            <ul>
                <li class="li_9">在线订购</li>
                <li class="li_7">|</li>
                <li class="li_8"><a href="jieshu.aspx">免费借书</a></li>
            </ul>
        </div>
    </div>

    <div class="xia">
        <div class="xia_1">
            <div class="xia_1_1">
                <h1>业务体系</h1>
                <h2>Welcome to yingding education</h2>
            </div>
            <div class="xia_1_2">
                <ul>
                    <li>当前位置：</li>
                    <li><a href="index.aspx">首页</a> ></li>
                    <li><a href="#">业务体系</a> ></li>
                    <li class="li_6">&nbsp;免费借书</li>
                </ul>
            </div>
        </div>
        <div class="jieshu">
            <img src="../webform项目/images1/u1.png" /></div>
        <div class="jieshu_1">
            <div class="shu_1a">
                <div class="shu_1">
                    <img width="127" height="177" src="<%=jieshu.jieshu_imageurl %>" /></div>
                <div class="shu_2">
                    <h2><%=jieshu.jieshu_name %></h2>
                    <h3>免费借阅：押金<span style="color: #333333;">￥</span><span><%=jieshu.jieshu_price %></span>  元</h3>
                    <ul>
                        <li>出版：<%=jieshu.jieshu_press %> &nbsp;&nbsp;&nbsp;作者：<%=jieshu.jieshu_press %> &nbsp;&nbsp;&nbsp; <%=jieshu.jieshu_name %></li>
                    </ul>
                    <h2 class="h2_1">内容推荐：</h2>
                    <span>简介：<%=jieshu.jieshu_intro.Substring(1,50) %>...</span>
                </div>
                <div class="shu_3" style="width: 793px; height: 402px;">
                    <div class="shu_3_1"><b>目录</b></div>
                    <div class="shu_3_2">
                        <ul>
                            <li><%=jieshu.jieshu_Directory %></li>
                        </ul>
                        <span><a href="#">显示部分信息</a></span>
                    </div>
                </div>
                <div class="shu_3a" style="width: 793px; height: 707px;">
                    <div class="shu_3_1a"><b>在线试读部分章节</b></div>
                    <div class="shu_3_2a">
                        <ul>
                            <li><%=jieshu.jieshu_section %></li>
                        </ul>
                        <span style="position: absolute; bottom: 15%; left: 35%"><a href="jieshuss.aspx?id=<%=jieshu.id %>">
                            <img src="../webform项目/images1/tu17.jpg" /></a></span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
