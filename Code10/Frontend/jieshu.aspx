<%@ Page Title="" Language="C#" MasterPageFile="~/Frontend/Site1.Master" AutoEventWireup="true" CodeBehind="jieshu.aspx.cs" Inherits="Code10.Frontend.WebForm6" %>

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
            <asp:Repeater runat="server" ID="jslist">
                <ItemTemplate>
                    <div class="jieshu_2">
                        <div class="jieshu_2_1"><a href="#">
                            <img width="127" height="189" src="<%#Eval("jieshu_imageurl")%>" /></a></div>
                        <div class="jieshu_2_2">
                            <h2><a href="#"><%# Eval("jieshu_name")%></a></h2>
                            <h3>内容推荐：</h3>
                            <ul>
                                <li><%#Eval("jieshu_intro")%></li>
                            </ul>
                            <div class="jieshu_2_3"><a href="jieshus.aspx?id=<%#Eval("id") %>">
                                <img src="../webform项目/images1/tu3.png" /></a></div>
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
                            Response.Write("<li class='page-item'><a class='page-link' href='jieshu.aspx?id=" + (i + 1) + "'>" + (i + 1) + "</a></li>");
                        } %>
                    <li class="page-item"><a class="page-link" href="#">Next</a></li>
                    <li class="page-item"><a class="page-link active" href="../jieshu/Add.aspx">添加</a></li>
            
                </ul>
            </nav>
        </div>
    </div>
</asp:Content>
