<%@ Page Title="" Language="C#" MasterPageFile="~/Page/MasterPageClient.master" AutoEventWireup="true" CodeFile="DanhSachRuou.aspx.cs" Inherits="DanhSachRuou" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style30 {
            width: 124px;
        }
        .auto-style31 {
            width: 96px;
        }
        .auto-style32 {
            width: 92px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style16">
        <tr>
            <td class="auto-style30">
                <asp:Label ID="Label10" runat="server" Text="DANH SÁCH RƯỢU"></asp:Label>
            </td>
            <td class="auto-style31">
                &nbsp;</td>
            <td class="auto-style32">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style30">
            <asp:LinkButton ID="LinkButton13" runat="server" Font-Bold="True" Font-Size="Large" Font-Underline="False" ForeColor="Maroon" PostBackUrl="~/ChiTietRuou.aspx">Chi Tiết Rượu</asp:LinkButton>
            </td>
            <td class="auto-style31">&nbsp;</td>
            <td class="auto-style32">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

