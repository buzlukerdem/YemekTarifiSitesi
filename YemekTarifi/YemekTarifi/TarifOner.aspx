<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="TarifOner.aspx.cs" Inherits="TarifOner" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style7 {
            margin-left: 40px;
        }
        .auto-style8 {
            margin-left: 80px;
        }
        .auto-style9 {
            text-align: right;
        }
        .auto-style10 {
            text-align: center;
            margin-left: 80px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9"><strong>Tarif Ad :</strong></td>
            <td>
                <asp:TextBox ID="txtTarifAd" runat="server" Width="300px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5"><strong>Malzemeler : </strong></td>
            <td class="auto-style7">
                <asp:TextBox ID="txtMalzemeler" runat="server" Height="120px" TextMode="MultiLine" Width="300px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9"><strong>Yapılış : </strong></td>
            <td class="auto-style7">
                <asp:TextBox ID="txtYapilis" runat="server" Height="200px" TextMode="MultiLine" Width="300px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9"><strong>Resim : </strong></td>
            <td class="auto-style7">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="300px" CssClass="tb5" />
            </td>
        </tr>
        <tr>
            <td class="auto-style9"><strong>Tarif Öneren : </strong></td>
            <td class="auto-style8">
                <asp:TextBox ID="txtTarifOneren" runat="server" Width="300px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9"><strong>Mail Adresi : </strong></td>
            <td class="auto-style8">
                <asp:TextBox ID="txtMailAdres" runat="server" TextMode="Email" Width="300px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style10">
                <asp:Button ID="btnYukle" runat="server" Text="Yükle" OnClick="btnYukle_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

