﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="KategoriDetay.aspx.cs" Inherits="KategoriDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style9 {
            font-size: large;
            color: #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList2" runat="server">
    <ItemTemplate>
        <table class="auto-style1">
            <tr>
                <td><strong><a href="YemekDetay.aspx?YemekID=<%#Eval("YemekID")%>">
                    <asp:Label ID="Label3" runat="server" CssClass="auto-style9" Text='<%# Eval("YemekAd") %>'></asp:Label>
                    </a></strong></td>
            </tr>
            <tr>
                <td>Malzemeler:
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Tarifi:
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Eklenme Tarihi :
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                            -Puan :
                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>

