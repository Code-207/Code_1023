<%@ Page Title="" Language="C#" MasterPageFile="~/Frontend/Site1.Master" AutoEventWireup="true" CodeBehind="dinggouss.aspx.cs" Inherits="Code10.Frontend.dinggouss" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../webform项目/css1/style.css" rel="stylesheet" type="text/css" />
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
            <div class="xia_1_2a">
                <ul>
                    <li>当前位置：</li>
                    <li><a href="Index.aspx">首页</a> ></li>
                    <li><a href="jieshus.aspx">业务体系</a> ></li>
                    <li><a href="#">在线订购</a> ></li>
                    <li class="li_6">&nbsp;赢鼎教育-高考报考定位卡
                    </li>
                </ul>
            </div>
        </div>
        <div class="jieshu">
            <img src="../webform项目/images1/tu18.jpg" />
        </div>
        <div class="jieshu_1">
            <div class="dan">
                <div class="dan_1">
                    <div class="dan_1_1"><b>姓名：</b></div>
                    <div class="dan_1_2">
                        <label for="zxczc"></label>
                        <!--<input type="text" " />-->
                        <asp:TextBox runat="server" ID="PName"></asp:TextBox>
                    </div>
                    <div class="dan_1_3">
                        <img src="../webform项目/images1/tu16.jpg" />
                    </div>
                    <div class="dan_1_4">请填写真实姓名，以便书正确送达。</div>
                </div>
                <div class="dan_1">
                    <div class="dan_1_1"><b>电话：</b></div>
                    <div class="dan_1_2">
                        <label for="zxczc"></label>
                        <!--<input type="text"  />-->
                        <asp:TextBox runat="server" ID="Phone" CssClass="ada"></asp:TextBox>
                    </div>
                    <div class="dan_1_3">
                        <img src="../webform项目/images1/tu16.jpg" />
                    </div>
                    9<div class="dan_1_4">请填写真实联系方式。</div>
                </div>
                <div class="dan_2">
                    <div class="dan_2_1"><b>书名：</b></div>
                    <div class="dan_2_2">
                        <div class="dan_2_2a1">
                            <div class="dan_2_2_11">
                                <img class="dan_2_2_11" src="<%= pr.product_imageurl%>" />
                            </div>
                        </div>
                        <div class="dan_2_2_2">
                            <asp:Label ID="indent_name" runat="server"><%=pr.product_name%></asp:Label></div>

                    </div>
                </div>
                <div class="dan_3">
                    <div class="dan_1_1"><b>费用：</b></div>
                    <div class="dan_1_3"><b>￥</b></div>
                    <div class="dan_3_2"><b><%=pr.product_price%></b></div>
                    <div class="dan_3_3">元</div>
                </div>
                <div class="dan_1">
                    <div class="dan_1_1"><b>邮箱：</b></div>
                    <div class="dan_1_2">
                        <label for="zxczc"></label>
                        <asp:TextBox runat="server" ID="emlia"></asp:TextBox>
                    </div>
                    <div class="dan_1_3">
                        <img src="../webform项目/images1/tu16.jpg" />
                    </div>
                </div>
                <div class="dan_1">
                    <div class="dan_1_1"><b>地址：</b></div>
                    <div class="dan_1_2">
                        <label for="zxczc"></label>
                        <asp:TextBox ID="address" runat="server"></asp:TextBox>
                    </div>
                    <div class="dan_1_3">
                        <img src="../webform项目/images1/tu16.jpg" />
                    </div>
                    <div class="dan_1_8">请详细填写地址，如：沈阳市铁西区和谐大厦A座1205室。</div>
                </div>
                <br />
                <div class="dan_5">
                    <div class="dan_5_1">
                        <a href="#">
                            <asp:Button ID="Button1" runat="server" Text="B" OnClick="indent_OnClick" CssClass="tijiao" />
                        </a>
                    </div>
                </div>
            </div>

            <div class="ye_1">
                <div class="ye_1_1">
                    <a href="#">
                        <img src="../webform项目/images1/tu4.png" />

                    </a>
                </div>
                <div class="ye_1_2">
                    <div class="ye_1_2_1">
                        <h3><span>18645365377</span>温馨提示：本站不能直接支付，您需到支付宝进行支付，赢鼎支付账户</h3>
                        <h3 class="h3_1">请将支付的结果发图给我们，</h3>
                        <a href="#">&nbsp;&nbsp;QQ: 12456610174</a>
                    </div>
                    <div class="ye_2">
                        <img src="../webform项目/images1/tu15.png" />
                    </div>
                </div>
            </div>
            <div class="kuai">
                <div class="kuai_1">
                    <img src="../webform项目/images1/tu8.png" />
                </div>
                <div class="kuai_2">
                    <div class="kuai_2_1">
                        <h2>皇姑区：宁山中路106号亚洲大厦A座1606室      电话：024-31230447</h2>
                    </div>
                    <div class="kuai_2_1s">
                        <h2>皇姑区：宁山中路106号亚洲大厦A座1606室      电话：024-31230447</h2>
                    </div>
                    <div class="kuai_2_1a">
                        <h2>皇姑区：宁山中路106号亚洲大厦A座1606室      电话：024-31230447</h2>
                    </div>

                </div>
                <div class="clear"></div>
            </div>
        </div>
    </div>
</asp:Content>

