<%@ Page Title="" Language="C#" MasterPageFile="~/Page/MasterPageClient.master" AutoEventWireup="true" CodeFile="GioHang.aspx.cs" Inherits="GioHang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style30 {
            width: 97px;
        }
        .auto-style31 {
        width: 161px;
    }
        .auto-style32 {
            width: 161px;
            height: 172px;
        }
        .auto-style33 {
            height: 172px;
        }
        .auto-style34 {
            width: 160px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style16">
        <tr>
            <td class="auto-style34"></td>
            <td><h2>&nbsp;Giỏ hàng</h2></td>
        </tr>
        </table>
    
<table class="auto-style16">
    <tr>
        <td class="auto-style32"></td>
        <td class="auto-style33">
<asp:GridView ID="gvGioHang" runat="server" AutoGenerateColumns="False" OnRowCommand="gvGioHang_RowCommand" OnSelectedIndexChanged="gvGioHang_SelectedIndexChanged" CellPadding="4" ForeColor="#333333" GridLines="None">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:BoundField DataField="MaHang" HeaderText="Mã rượu" />
        <asp:TemplateField HeaderText="Tên rượu">
            <ItemTemplate>
                <asp:Label ID="lblTenRuou" runat="server" Text='<%# Eval("TenHang") %>'></asp:Label>
            </ItemTemplate>
            <ItemStyle Width="250px" />
        </asp:TemplateField>
        <asp:BoundField DataField="Gia" HeaderText="Giá" />
        <asp:TemplateField HeaderText="Số lượng">
            <ItemTemplate>
                <asp:TextBox ID="txtSoLuong" runat="server" Text='<%# Eval("SoLuong") %>'></asp:TextBox>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:BoundField DataField="ThanhTien" HeaderText="Thành tiền" />
        <asp:ButtonField Text="Cập nhật" />
    </Columns>
    <EditRowStyle BackColor="#2461BF" />
    <EmptyDataTemplate>
        Không có hàng trong giỏ
    </EmptyDataTemplate>
    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#EFF3FB" />
    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#F5F7FB" />
    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
    <SortedDescendingCellStyle BackColor="#E9EBEF" />
    <SortedDescendingHeaderStyle BackColor="#4870BE" />
</asp:GridView>
        </td>
    </tr>
    <tr>
        <td class="auto-style31">&nbsp;</td>
        <td>
<asp:Label ID="lblTongTien" runat="server" Font-Bold="True" Font-Size="14pt"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style31">&nbsp;</td>
        <td>
<asp:Label ID="lblThongBao" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style31">&nbsp;</td>
        <td>
<asp:Button ID="btnTiepTucMuaHang" runat="server" OnClick="btnTiepTucMuaHang_Click" Text="Tiếp tục mua hàng" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="btnXoaGioHang" runat="server" OnClick="btnXoaGioHang_Click" Text="Xóa giỏ hàng" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="btnThanhToan" runat="server" OnClick="btnThanhToan_Click" Text="Thanh toán" />
        </td>
    </tr>
</table>
    <asp:SqlDataSource ID="sqlRuou" runat="server" ConnectionString="<%$ ConnectionStrings:Nhom6WFConnectionString2 %>" DeleteCommand="DELETE FROM [SanPham] WHERE [MaSanPham] = @MaSanPham" InsertCommand="INSERT INTO [SanPham] ([MaDanhMuc], [TenSanPham], [XuatXu], [NongDo], [TheTich], [Anh], [MoTa], [Gia], [SoLuong], [TrangThai]) VALUES (@MaDanhMuc, @TenSanPham, @XuatXu, @NongDo, @TheTich, @Anh, @MoTa, @Gia, @SoLuong, @TrangThai)" SelectCommand="SELECT * FROM [SanPham]" UpdateCommand="UPDATE [SanPham] SET [MaDanhMuc] = @MaDanhMuc, [TenSanPham] = @TenSanPham, [XuatXu] = @XuatXu, [NongDo] = @NongDo, [TheTich] = @TheTich, [Anh] = @Anh, [MoTa] = @MoTa, [Gia] = @Gia, [SoLuong] = @SoLuong, [TrangThai] = @TrangThai WHERE [MaSanPham] = @MaSanPham">
        <DeleteParameters>
            <asp:Parameter Name="MaSanPham" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MaDanhMuc" Type="Int32" />
            <asp:Parameter Name="TenSanPham" Type="String" />
            <asp:Parameter Name="XuatXu" Type="String" />
            <asp:Parameter Name="NongDo" Type="Double" />
            <asp:Parameter Name="TheTich" Type="Int32" />
            <asp:Parameter Name="Anh" Type="String" />
            <asp:Parameter Name="MoTa" Type="String" />
            <asp:Parameter Name="Gia" Type="Int32" />
            <asp:Parameter Name="SoLuong" Type="Int32" />
            <asp:Parameter Name="TrangThai" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="MaDanhMuc" Type="Int32" />
            <asp:Parameter Name="TenSanPham" Type="String" />
            <asp:Parameter Name="XuatXu" Type="String" />
            <asp:Parameter Name="NongDo" Type="Double" />
            <asp:Parameter Name="TheTich" Type="Int32" />
            <asp:Parameter Name="Anh" Type="String" />
            <asp:Parameter Name="MoTa" Type="String" />
            <asp:Parameter Name="Gia" Type="Int32" />
            <asp:Parameter Name="SoLuong" Type="Int32" />
            <asp:Parameter Name="TrangThai" Type="Boolean" />
            <asp:Parameter Name="MaSanPham" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
<br />
<br />
<br />
<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<br />
</asp:Content>

