<%@ Page Title="" Language="C#" MasterPageFile="~/Frontend/Site1.Master" AutoEventWireup="true" CodeBehind="dinggous.aspx.cs" Inherits="Code10.Frontend.dinggous" %>
<%@ Import Namespace="System.ComponentModel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../webform项目/css1/style.css" rel="stylesheet" type="text/css" />
    <script src="js1/jquery-1.9.1.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="jqq">
        <div class="jqq_1">
            <ul>
                <li class="li_9">在线订购</li>
                <li class="li_7">|</li>
                <li class="li_8"><a href="jieshus.aspx">免费借书</a></li>

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
                    <li><a href="Index.aspx">首页</a> ></li>
                    <li><a href="jieshus.aspx">业务体系</a> ></li>
                    <li class="li_6">&nbsp;在线订购</li>
                </ul>
            </div>
        </div>
        <div class="jieshu">
            <img src="../webform项目/images1/tu18.jpg" /></div>
        <div class="jieshu_1">
            <div class="dingyue_a">
                
                <asp:Repeater runat="server" ID="dinggoused">
                    <ItemTemplate>
                        <div class="dingyue_1"><a href="jieshus.aspx">
                            <img src="<%#Eval("product_imageurl") %>" class="dingyue_1"/></a></div>
                        <div class="dingyue_1_1">
                            <div class="dingyue_2_a">
                                <h2><%#Eval("product_name") %></h2>
                                <div class="dingyue_2_1">
                                    <ul>
                                        <li class="li_a">标记</li>
                                        <li class="li_b"><%#Eval("product_price") %></li>
                                        <li>元</li>
                                        <asp:TextBox ID="ada" runat="server" />
                                        <asp:TextBox ID="fasf" runat="server"></asp:TextBox>
                                    </ul>
                                </div>
                            </div>
                            <div class="dingyue_3a">
                                <ul>
                                    <li>内容:</li>;
                                   <script>

                                   </script>
                                    <%#DataBinder.Eval(Container.DataItem,"product_content")%>
                                    <li><%#Eval("product_intro") %></li>
                                </ul>
                            </div>
                            <div class="dingyue_4a"><a href="dinggouss.aspx?id=<%#Eval("id") %>">
                                <img src="images1/tu21.jpg"  class="dingyue_4a"/></a></div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </div>
</asp:Content>
