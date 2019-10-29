<%@ Page Title="" Language="C#" MasterPageFile="~/Page/MasterPageClient.master" AutoEventWireup="true" CodeFile="DanhMucRuou.aspx.cs" Inherits="DanhMucRuou" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style31 {
        width: 100px;
    }
        .auto-style32 {
            width: 286px;
        }
        .auto-style35 {
            width: 285px;
        }
        .auto-style36 {
            width: 69px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
        <table class="auto-style16">
            <tr>
                <td class="auto-style36"></td>
                <td class="auto-style35"><h2>       Danh mục rượu</h2></td>
                <td>
                    <asp:Label ID="lblThongBaoHetSanPham" runat="server" Font-Size="14pt" ForeColor="Red"></asp:Label>
                </td>
            </tr>
        </table>
    
<table class="auto-style16">
    <tr valign="top">
        <td class="auto-style31">&nbsp;</td>
        <td class="auto-style32">
            <asp:SqlDataSource ID="sqlDanhMuc" runat="server" ConnectionString="<%$ ConnectionStrings:Nhom6WFConnectionString2 %>" SelectCommand="SELECT * FROM [DanhMuc]"></asp:SqlDataSource>
            <asp:DataList ID="dtlDanhMuc" runat="server" DataKeyField="MaDanhMuc" DataSourceID="sqlDanhMuc" CellPadding="4" ForeColor="#333333">
                <AlternatingItemStyle BackColor="White" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <ItemStyle BackColor="#EFF3FB" />
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("MaDanhMuc","~/Page/DanhMucRuou.aspx?MaDanhMuc={0}") %>' Text='<%# Eval("TenDanhMuc","{0}") %>' Font-Bold="False" Font-Size="16pt"></asp:HyperLink>
<br />
                </ItemTemplate>
                <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            </asp:DataList>
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
        </td>
        <td>
            <asp:SqlDataSource ID="sqlDanhSachSanPham" runat="server" ConnectionString="<%$ ConnectionStrings:Nhom6WFConnectionString2 %>" SelectCommand="SELECT * FROM [SanPham] WHERE ([MaDanhMuc] = @MaDanhMuc)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="MaDanhMuc" QueryStringField="MaDanhMuc" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:DataList ID="dtlDanhSachRuou" runat="server" DataKeyField="MaSanPham" DataSourceID="sqlDanhSachSanPham" RepeatColumns="4" OnItemCommand="dtlDanhSachRuou_ItemCommand" CellPadding="4" ForeColor="#333333">
                <AlternatingItemStyle BackColor="White" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <ItemStyle BackColor="#EFF3FB" />
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" Height="170px" ImageUrl='<%# Eval("Anh","~/image/{0}") %>' Width="150px" />
                    <br />
                    Tên rượu:
                    <asp:Label ID="TenSanPhamLabel" runat="server" Text='<%# Eval("TenSanPham") %>' Font-Bold="True" Font-Size="13pt" />
                    <br />
                    Giá:
                    <asp:Label ID="GiaLabel" runat="server" Text='<%# Eval("Gia") %>' Font-Size="15pt" ForeColor="Red" />
                    <br />
                    Số lượng còn:
                    <asp:Label ID="SoLuongLabel" runat="server" Text='<%# Eval("SoLuong") %>' />
                    <br />
                    <br />
                    <asp:Button ID="btnXemChiTiet" runat="server" CommandName="XemChiTiet" Text="Xem chi tiết" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnThemVaoGio" runat="server" CommandName="ThemVaoGio" Text="Thêm vào giỏ" OnClick="btnThemVaoGio_Click" />
<br />
                </ItemTemplate>
                <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            </asp:DataList>
        </td>
    </tr>
</table>

<br />

</asp:Content>

