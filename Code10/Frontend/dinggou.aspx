<%@ Page Title="" Language="C#" MasterPageFile="~/Frontend/Site1.Master" AutoEventWireup="true" CodeBehind="dinggou.aspx.cs" Inherits="Code10.Frontend.dinggou" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../webform项目/css1/style.css" rel="stylesheet" type="text/css" />
    <style>
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="jqq">
        <div class="jqq_1">
            <ul>
                <li class="li_9">在线订购</li>
                <li class="li_7">|</li>
                <li class="li_8"><a href="jieshus.aspx">免费借书</a></li>

            </ul>
        </div></div>

    <div class="xia">
        <div class="xia_1">
            <div class="xia_1_1">
                <h1>业务体系</h1><h2>Welcome to yingding education</h2>
            </div>
            <div class="xia_1_2"><ul>
                <li> 当前位置：</li> <li><a href="Index.aspx"> 首页</a> > </li><li><a href="jieshus.aspx">业务体系</a>   > </li><li class="li_6">&nbsp;在线订购</li>
            </ul></div>
        </div>

        <div class="jieshu_1">
            <asp:Repeater ID="product" runat="server" >
                <ItemTemplate>
                    <div class="dingyue">
                        <div class="dingyue_1"><a href="dinggous.aspx?id=<%#Eval("id") %>"><img src="../backstage/img/product/<%#Eval("product_imageurl") %>" class="dingyue_1"/></a></div>
                        <div class="dingyue_2">
                            <span><a href="#">查看详情</a></span> <h2><a href="#"><%#Eval("product_name") %></a></h2>
                            <div class="dingyue_2_1"><ul><li class="li_a">标记</li>
                                <li class="li_c"><%#Eval("product_price") %></li><li>元</li></ul></div>
                            <div class="dingyue_3"> <%#Eval("product_intro") %></div>
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
                            Response.Write("<li class='page-item'><a class='page-link' href='dinggou.aspx?id=" + (i + 1) + "'>" + (i + 1) + "</a></li>");
                        } %>
                    <li class="page-item"><a class="page-link" href="#">Next</a></li>
                    <li class="page-item"><a class="page-link active" href="../fangying/Add.aspx">添加</a></li>
            
                </ul>
            </nav>
        </div>
    </div>
</asp:Content>
