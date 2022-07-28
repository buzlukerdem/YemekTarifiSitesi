<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="YorumDetay.aspx.cs" Inherits="YorumDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style14 {
            width: 225px;
        }
        .auto-style15 {
            color: #FFFFFF;
            text-align: center;
            font-size: large;
        }
        .auto-style16 {
            width: 225px;
            color: #FFFFFF;
            text-align: center;
        }
        .auto-style17 {
            margin-left: 80px;
        }
        .auto-style18 {
            text-align: center;
            margin-left: 80px;
        }
        .auto-style20 {
            margin-left: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style10">
        <tr>
            <td class="auto-style16"><strong><span class="auto-style13">YORUM</span></strong> </td>
            <td class="auto-style15"><strong>ONAYLAMA</strong></td>
        </tr>
        <tr>
            <td class="auto-style16">AD-SOYAD :</td>
            <td>
                <asp:TextBox ID="txtadsoyad" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style16">MAİL ADRES :</td>
            <td>
                <asp:TextBox ID="txtmail" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style16">YORUM İÇERİĞİ :</td>
            <td class="auto-style17">
                <asp:TextBox ID="txtyorum" runat="server" Height="200px" TextMode="MultiLine" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style16">YEMEK :</td>
            <td class="auto-style18">
                <asp:TextBox ID="txtyemek" runat="server" CssClass="auto-style20" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style18">
                <asp:Button ID="btnonayla" runat="server" Text="ONAYLA" OnClick="btnonayla_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

