<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="KategoriDuzenle.aspx.cs" Inherits="KategoriAdminDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style14 {
            background-color: #FFFFFF;
        }
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style10">
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style15">KATEGORİ AD :</td>
            <td class="auto-style17">
                <asp:TextBox ID="txtkategoriad" runat="server" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15">ADET :</td>
            <td class="auto-style17">
                <asp:TextBox ID="txtadet" runat="server" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style18">RESİM :</td>
            <td class="auto-style19">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style17">
                <asp:Button ID="btnguncelle" runat="server" CssClass="auto-style14" OnClick="btnguncelle_Click" Text="GÜNCELLE" />
            </td>
        </tr>
    </table>
</asp:Content>

