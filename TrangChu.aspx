<%@ Page Title="" Language="C#" MasterPageFile="~/Page/MasterPageClient.master" AutoEventWireup="true" CodeFile="TrangChu.aspx.cs" Inherits="TrangChu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style30 {
            width: 108px;
        }
        .auto-style31 {
            width: 172px;
            height: 24px;
        }
        .auto-style32 {
            height: 24px;
        }
        .auto-style33 {
            height: 24px;
            width: 4px;
        }
        .auto-style39 {
            width: 172px;
            height: 31px;
        }
        .auto-style40 {
        height: 31px;
        width: 4px;
    }
        .auto-style41 {
            height: 31px;
        }
        .auto-style42 {
            width: 172px;
            height: 30px;
        }
        .auto-style43 {
            height: 30px;
            width: 4px;
        }
        .auto-style44 {
            height: 30px;
        }
    .auto-style45 {
        width: 93px;
        height: 24px;
    }
    .auto-style46 {
        width: 93px;
        height: 30px;
    }
    .auto-style47 {
        width: 93px;
        height: 31px;
    }
    .auto-style48 {
        font-size: large;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style16" style="border-collapse: collapse;">
        <tr>
            <td class="auto-style31">
                &nbsp;</td>
            <td class="auto-style45">
                <asp:SqlDataSource ID="sqlDanhSach" runat="server" ConnectionString="<%$ ConnectionStrings:Nhom6WFConnectionString2 %>" SelectCommand="SELECT [TenSanPham], [XuatXu], [NongDo], [TheTich], [Anh], [MoTa], [Gia], [MaSanPham], [SoLuong] FROM [SanPham]"></asp:SqlDataSource>
            </td>
            <td class="auto-style33">
                &nbsp;</td>
            <td class="auto-style32">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style42" spellcheck="true" style="border: 1px none #800000;">&nbsp;</td>
            <td class="auto-style46" colspan="1" spellcheck="true"></td>
            <td class="auto-style43"></td>
            <td class="auto-style44"><strong><span class="auto-style48">Nhập giá rượu muốn tìm :</span></strong>
                <asp:TextBox ID="txtTimKiem" runat="server" Height="30px"></asp:TextBox>
&nbsp;<asp:ImageButton ID="ImageButton9" runat="server" Height="36px" ImageAlign="Top" ImageUrl="~/image/btimkiem.png" OnClick="ImageButton9_Click" Width="80px" />
            </td>
        </tr>
        <tr>
            <td spellcheck="true" style="border: 1px none #800000;" colspan="2" rowspan="3">
                <asp:Image ID="Image1" runat="server" Height="1161px" ImageUrl="~/image/left3.jpg" Width="300px" />
            </td>
            <td class="auto-style40">&nbsp;</td>
            <td rowspan="3">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="sqlDanhSach" ForeColor="#333333" GridLines="None" PageSize="5" DataKeyNames="MaSanPham" OnRowCommand="GridView1_RowCommand">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="TenSanPham" HeaderText="Tên sản phẩm" SortExpression="TenSanPham" />
                        <asp:BoundField DataField="XuatXu" HeaderText="Xuât xứ" SortExpression="XuatXu" />
                        <asp:BoundField DataField="NongDo" HeaderText="Nồng độ" SortExpression="NongDo" />
                        <asp:BoundField DataField="TheTich" HeaderText="Thể tích" SortExpression="TheTich" />
                        <asp:BoundField DataField="MoTa" HeaderText="Mô tả" SortExpression="MoTa" />
                        <asp:BoundField DataField="SoLuong" HeaderText="Số lượng còn" SortExpression="SoLuong" />
                        <asp:ImageField DataImageUrlField="Anh" DataImageUrlFormatString="~/image/{0}" HeaderText="Ảnh">
                            <ControlStyle Height="150px" Width="150px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="Gia" HeaderText="Gia" SortExpression="Gia" />
                        <asp:ButtonField ButtonType="Button" CommandName="ThemVaoGio" Text="Thêm vào giỏ" />
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td class="auto-style40"></td>
        </tr>
        <tr>
            <td class="auto-style40"></td>
        </tr>
        <tr>
            <td class="auto-style39" spellcheck="true" style="border: 1px none #800000;">&nbsp;</td>
            <td class="auto-style47" colspan="1" spellcheck="true">&nbsp;</td>
            <td class="auto-style40">&nbsp;</td>
            <td class="auto-style41">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

