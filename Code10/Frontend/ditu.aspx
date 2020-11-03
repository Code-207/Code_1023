<%@ Page Title="" Language="C#" MasterPageFile="~/Frontend/Site1.Master" AutoEventWireup="true" CodeBehind="ditu.aspx.cs" Inherits="Code10.Frontend.ditu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../webform项目/css1/style.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="jqq">
        <div class="jqq_1">
            <ul>
                <li class="li_9">联系我们</li>

            </ul>
        </div>

    </div>

    <div class="xia">
        <div class="xia_1">
            <div class="xia_1_1">
                <h1>关于我们</h1><h2>Welcome to DongMuJiaoHui education</h2></div>
            <div class="xia_1_2"><ul>
                <li>当前位置：</li><li><a href="Index.aspx"> 首页</a> ></li><li> <a href="guanyv.aspx">关于我们</a> ></li><li class="li_6">&nbsp;总裁寄语</li>
            </ul></div>
        </div>
        <div class="xia_2ss">
            <div class="xia_2ss_1">
                <div class="xia_2ss_1_1"><h1><%=about.product_name %> </h1><h2>YINGDING EDUCATION</h2></div>
                <div class="xia_2ss_1_2"><img src="<%=about.about_siteurl %>"" /></div>
                <div class="xia_2ss_1_3"><ul><li>地址：</li><li><%=about.about_site %></li><li>电话：</li><li><%=about.about_linkman %>   <%=about.about_phone %></li></ul></div>
            </div>
            <div class="xia_2ss_2">
                <div class="xia_2ss_3">
                    <div class="xia_2ss_3_1">
                        <div class="xia_2ss_3_1_1"><h2><%=hp.hq_site %>方式</h2> <ul><li>全国统一业务咨询电话：<br /><li>
                                <%=hp.hq_phone %></li>
                            <li></li>
                            <li>传真：<br />
                            <li><%=hp.hq_fax %></li>
                            <li>招聘邮箱：<br />
                                <%=hp.hq_emil %></li>
                        </ul></div>
                        <div class="xia_2ss_3_1_2"><h2>冬木教会</h2> 
                            <ul><li>地址：
                                <br /><li>
                                    <%=hp.hq_site %></li>
                                <li></li>
                                <li>电话：<br />
                                <li><%=hp.hq_phone %></li>
                            </ul></div>
                    </div>
                </div></div>
        </div>
    </div>
</asp:Content>
