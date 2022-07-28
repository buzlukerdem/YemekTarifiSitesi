<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="Iletisim.aspx.cs" Inherits="Iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style8 {
        text-align: right;
    }
    .auto-style9 {
        text-align: center;
        height: 27px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style9" colspan="2"><strong>MESAJ PANELİ</strong></td>
    </tr>
    <tr>
        <td class="auto-style8">Ad - Soyad :</td>
        <td>
            <asp:TextBox ID="txtadsoyad" runat="server" CssClass="tb5" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">Mail Adresi :</td>
        <td>
            <asp:TextBox ID="txtmailadres" runat="server" CssClass="tb5" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">Konu : </td>
        <td>
            <asp:TextBox ID="txtbaslik" runat="server" CssClass="tb5" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">Mesaj : </td>
        <td>
            <asp:TextBox ID="txtmesajicerik" runat="server" CssClass="tb5" Height="150px" TextMode="MultiLine" Width="250px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="btngonder" runat="server" Height="40px" Text="Gönder" Width="100px" OnClick="Button1_Click" />
        </td>
    </tr>
</table>
</asp:Content>

