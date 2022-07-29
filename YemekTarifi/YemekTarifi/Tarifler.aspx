<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Tarifler.aspx.cs" Inherits="Tarifler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
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

        .auto-style18 {
            color: #FFFFFF;
            width: 257px;
            font-size: 18px;
        }

        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel runat="server">
            <table class="auto-style10">
            <tr>
                <td class="auto-style18">ONAYLANAN TARİFLER</td>
                <td class="auto-style14">
                    <asp:Button ID="Button1" runat="server" Text="+" OnClick="Button1_Click"  />
                </td>
                <td class="auto-style14">
                    <asp:Button ID="Button2" runat="server" Text="-" OnClick="Button2_Click"  />
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="445px">
            <itemtemplate>
                <table class="auto-style10">
                    <tr>
                        <td class="auto-style16">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style11" Text='<%# Eval("TarifAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style14">
                            <a href="TarifDetay.aspx?TarifID=<%#Eval("TarifID")%>">
                                <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/pictures/update.jpg" Width="30px" />
                            </a>
                        </td>
                    </tr>
                </table>
            </itemtemplate>
        </asp:DataList>
    </asp:Panel>

    <asp:Panel ID="Panel3" runat="server">
            <table class="auto-style10">
            <tr>
                <td class="auto-style18">ONAYLANMAYAN TARİFLER</td>
                <td class="auto-style14">
                    <asp:Button ID="Button3" runat="server" Text="+" OnClick="Button3_Click"  />
                </td>
                <td class="auto-style14">
                    <asp:Button ID="Button4" runat="server" Text="-" OnClick="Button4_Click"  />
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="445px">
            <itemtemplate>
                <table class="auto-style10">
                    <tr>
                        <td class="auto-style16">
                            <asp:Label ID="Label2" runat="server" CssClass="auto-style11" Text='<%# Eval("TarifAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style14">
                            <a href="TarifDetay.aspx?TarifID=<%#Eval("TarifID")%>">
                                <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/pictures/update.jpg" Width="30px" />
                            </a>
                        </td>
                    </tr>
                </table>
            </itemtemplate>
        </asp:DataList>
    </asp:Panel>



</asp:Content>


