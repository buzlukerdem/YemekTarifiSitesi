<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="YemekDuzenle.aspx.cs" Inherits="YemekDuzenle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style15 {
            color: #FFFFFF;
            text-align: right;
        }
        .auto-style16 {
            color: #FFFFFF;
            width: 291px;
        }
        .auto-style17 {
            width: 291px;
        }
        .auto-style18 {
            color: #FFFFFF;
            text-align: right;
            height: 29px;
        }
        .auto-style19 {
            width: 291px;
            height: 29px;
        }
        .auto-style14 {
            background-color: #FFFFFF;
        }
        .auto-style20 {
            width: 291px;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style10">
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style15">YEMEK ADI :</td>
            <td class="auto-style17">
                <asp:TextBox ID="txtYemekAd" runat="server" CssClass="tb5" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15">MALZEME :</td>
            <td class="auto-style17">
                <asp:TextBox ID="txtMalzeme" runat="server" CssClass="tb5" Height="120px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style18">TARİF :</td>
            <td class="auto-style19">
                <asp:TextBox ID="txtTarif" runat="server" CssClass="tb5" Height="150px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15">KATEGORI :</td>
            <td class="auto-style17">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="250px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style20">
                <asp:Button ID="btnguncelle" runat="server" CssClass="auto-style14" Text="GÜNCELLE" OnClick="btnguncelle_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

