<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Mesajlar.aspx.cs" Inherits="Mesajlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
    .auto-style14 {
        color: #FFFFFF;
        width: 340px;
    }
    .auto-style15 {
        color: #FFFFFF;
        width: 1094px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style10">
            <tr>
                <td class="auto-style15">MESAJLAR LİSTESİ</td>
                <td class="auto-style14">
                    <asp:Button ID="Button1" runat="server" Text="+" Width="30px" OnClick="Button1_Click" />
                </td>
                <td class="auto-style14">
                    <asp:Button ID="Button2" runat="server" Text="-" Width="29px" OnClick="Button2_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>

    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="445px">
            <ItemTemplate>
                <table class="auto-style10">
                    <tr>
                        <td class="auto-style16">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style11" Text='<%#Eval("MesajSahip") %>'></asp:Label>
                        </td>
                        <td class="auto-style5">

                            <a href ="MesajDetay.aspx?MesajID=<%#Eval("MesajID") %>"><asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/pictures/kitaplar.png" Width="81px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>

