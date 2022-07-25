<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="GununYemegi.aspx.cs" Inherits="GununYemegi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style7 {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:DataList ID="DataList3" runat="server">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style5"><strong>
                        <asp:Label ID="Label15" runat="server" CssClass="auto-style7" Text='<%# Eval("GYAd") %>'></asp:Label>
                        </strong></td>
                </tr>
                <tr>
                    <td><strong>Malzeme :</strong>
                        <asp:Label ID="Label16" runat="server" Text='<%# Eval("GYMalzeme") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><strong>Tarif :</strong>
                        <asp:Label ID="Label17" runat="server" Text='<%# Eval("GYTarif") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><strong>Puan :</strong>
                        <asp:Label ID="Label18" runat="server" Text='<%# Eval("GYPuan") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><strong>Tarih :</strong>
                        <asp:Label ID="Label19" runat="server" Text='<%# Eval("GYTarih") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Image ID="Image3" runat="server" Height="150px" ImageUrl="~/pictures/dolmayemek.jpg" Width="200px" />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

