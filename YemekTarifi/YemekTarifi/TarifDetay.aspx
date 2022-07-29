<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="TarifDetay.aspx.cs" Inherits="TarifDetay" %>

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
        .auto-style21 {
            background-color: #FFFFFF;
        }
        .auto-style22 {
            width: 225px;
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style10">
        <tr>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style15">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style22">Tarif Ad:</td>
            <td>
                <asp:TextBox ID="txtad" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style22">Tarif Malzeme :</td>
            <td>
                <asp:TextBox ID="txtmalzeme" runat="server" Width="220px" Height="100px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style22">Yapılış :</td>
            <td class="auto-style17">
                <asp:TextBox ID="txtyapilis" runat="server" Height="200px" TextMode="MultiLine" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style22">Resim :</td>
            <td class="auto-style18">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="220px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style22">Öneren :</td>
            <td class="auto-style18">
                <asp:TextBox ID="txtoneren" runat="server" CssClass="auto-style20" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style22">Mail :</td>
            <td class="auto-style18">
                <asp:TextBox ID="txtmail" runat="server" CssClass="auto-style20" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style22">Kategori :</td>
            <td class="auto-style18">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="220px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style18">
                <asp:Button ID="btnonayla" runat="server" Text="ONAYLA" CssClass="auto-style21" OnClick="btnonayla_Click"  />
            </td>
        </tr>
    </table>
</asp:Content>

