<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Yemekler.aspx.cs" Inherits="Yemekler" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style14 {
            text-align: right;
        }

        .auto-style15 {
            text-align: center;
            width: 117px;
        }

        .auto-style16 {
            width: 178px;
        }

        .auto-style17 {
            color: #FFFFFF;
            width: 257px;
        }

        .auto-style18 {
            color: #FFFFFF;
            font-size: 16px;
            width: 98px;
        }

        .auto-style19 {
            color: #FFFFFF;
            font-size: 16px;
            height: 29px;
            text-align: right;
            width: 98px;
        }

        .auto-style20 {
            height: 29px;
            width: 342px;
        }
        .auto-style21 {
            background-color: #FFFFFF;
        }
        .auto-style22 {
        color: #FFFFFF;
        font-size: 16px;
        text-align: right;
        width: 98px;
    }
        .auto-style23 {
            width: 342px;
        }
        .auto-style24 {
            text-align: center;
            width: 342px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel runat="server">
            <table class="auto-style10">
            <tr>
                <td class="auto-style17">YEMEKLER LİSTESİ</td>
                <td class="auto-style14">
                    <asp:Button ID="Button1" runat="server" Text="+" OnClick="Button1_Click" />
                </td>
                <td class="auto-style14">
                    <asp:Button ID="Button2" runat="server" Text="-" OnClick="Button2_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="445px">
            <itemtemplate>
                <table class="auto-style10">
                    <tr>
                        <td class="auto-style16">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style11" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style15">
                            <a href="Yemekler.aspx?YemekID=<%#Eval("YemekID")%>&islem=sil">
                                <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/pictures/delete.jpg" Width="30px" />
                            </a>
                        </td>
                        <td class="auto-style5">
                            <a href="YemekDuzenle.aspx?YemekID=<%#Eval("YemekID")%>">
                                <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/pictures/update.jpg" Width="30px" />
                            </a>
                        </td>
                    </tr>
                </table>
            </itemtemplate>
        </asp:DataList>
    </asp:Panel>

    <asp:Panel ID="Panel3" runat="server">
        <table class="auto-style10">
            <tr>
                <td class="auto-style17">YEMEK EKLEME</td>
                <td class="auto-style14">
                    <asp:Button ID="Button5" runat="server" Text="+" OnClick="Button5_Click" />
                </td>
                <td class="auto-style14">
                    <asp:Button ID="Button6" runat="server" Text="-" OnClick="Button6_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style10">
            <tr>
                <td class="auto-style22">YEMEK AD : </td>
                <td class="auto-style23">
                    <asp:TextBox ID="txtyemekad" runat="server" CssClass="tb5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style19">MALZEME :</td>
                <td class="auto-style20">
                    <asp:TextBox ID="txtmalzeme" runat="server" CssClass="tb5" Height="100px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style22">TARİF :</td>
                <td class="auto-style23">
                    <asp:TextBox ID="txttarif" runat="server" CssClass="tb5" Height="175px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style22">KATEGORİ&nbsp; :</td>
                <td class="auto-style23">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="300px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style24">
                    <asp:Button ID="Button7" runat="server" CssClass="auto-style21" OnClick="Button7_Click" Text="EKLE" />
                </td>
            </tr>
        </table>
    </asp:Panel>

</asp:Content>


