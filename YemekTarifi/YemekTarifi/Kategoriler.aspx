<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Kategoriler.aspx.cs" Inherits="Kategoriler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
        }
        .auto-style19 {
            color: #FFFFFF;
            font-size: 16px;
            height: 29px;
        }
        .auto-style20 {
            height: 29px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style10">
            <tr>
                <td class="auto-style17">KATEGORİ LİSTESİ</td>
                <td class="auto-style14">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="+" />
                </td>
                <td class="auto-style14">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="-" />
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
                             <asp:Label ID="Label1" runat="server" CssClass="auto-style11" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                         </td>
                         <td class="auto-style15">
                             <a href="Kategoriler.aspx?KategoriID=<%#Eval("KategoriID")%>&islem=sil"><asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/pictures/delete.jpg" Width="30px" /></a>
                         </td>
                         <td class="auto-style5">
                             <a href ="KategoriDuzenle.aspx?KategoriID=<%#Eval("KategoriID")%>"><asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/pictures/update.jpg" Width="30px" /></a>
                         </td>
                     </tr>
                 </table>
             </ItemTemplate>
         </asp:DataList>
    </asp:Panel>

    <asp:Panel ID="Panel3" runat="server">
        <table class="auto-style10">
            <tr>
                <td class="auto-style17">EKLEME SİLME&nbsp; </td>
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
                <td class="auto-style18">KATEGORİ AD :</td>
                <td>
                    <asp:TextBox ID="txtkategoriad" runat="server" CssClass="tb5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style19">KATEGORİ ICON :</td>
                <td class="auto-style20">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style18">&nbsp;</td>
                <td>
                    <asp:Button ID="btnekle" runat="server" Text="EKLE" OnClick="btnekle_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

