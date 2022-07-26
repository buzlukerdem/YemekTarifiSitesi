<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="YemekDetay.aspx.cs" Inherits="YemekDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style8 {
            font-size: x-large;
        }
        .auto-style9 {
            font-size: xx-large;
        }
        .auto-style10 {
            font-size: 10pt;
        }
        .auto-style11 {
            font-size: 14pt;
        }
        .auto-style12 {
            height: 26px;
        }
        .auto-style13 {
            color: #FFFFFF;
        }
    .auto-style14 {
        text-align: right;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <strong>
    <asp:Label ID="Label4" runat="server" CssClass="auto-style9" Text="Label"></asp:Label>
    <br />
    </strong>
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td><strong>
                        <asp:Label ID="Label5" runat="server" CssClass="auto-style8" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </strong></td>
                </tr>
                <tr>
                    <td style="border-bottom-style: groove; border-bottom-width: thin; border-bottom-color: #000000">
                        <asp:Label ID="Label6" runat="server" CssClass="auto-style11" Text='<%# Eval("YorumIcerik") %>'></asp:Label>
                        &nbsp;
                        <asp:Label ID="Label7" runat="server" CssClass="auto-style10" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <br />
    <div style="background-color:black; " class="auto-style13">YORUM YAPMA PANELİ</div>
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style12"></td>
                <td class="auto-style12"></td>
            </tr>
            <tr>
                <td class="auto-style14"><strong>Ad-Soyad: </strong> </td>
                <td>
                    <asp:TextBox ID="txtAdSoyad" runat="server" Width="270px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14"><strong>Mail Adresi: </strong> </td>
                <td>
                    <asp:TextBox ID="txtMail" runat="server" Width="270px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14"><strong>Yorum :</strong></td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtYorum" runat="server" Height="100px" TextMode="MultiLine" Width="270px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style3">
                    <asp:Button ID="btnYorum" runat="server" Text="Yorum Yap" OnClick="btnYorum_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

