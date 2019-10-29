<%@ Page Title="" Language="C#" MasterPageFile="~/Page/MasterPageClient.master" AutoEventWireup="true" CodeFile="ThongTinDonHang.aspx.cs" Inherits="Page_ThongTinDonHang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style31 {
            width: 115px;
        }
        .auto-style32 {
    }
        .auto-style33 {
            width: 348px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Thông tin đơn hàng</h2>
    <table class="auto-style16">
        <tr valign="top">
            <td class="auto-style31">&nbsp;</td>
            <td class="auto-style33">
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="MaHoaDon" DataSourceID="sqlHoaDon" Height="50px" Width="262px" CellPadding="4" ForeColor="#333333" GridLines="None" OnPageIndexChanging="DetailsView1_PageIndexChanging">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
            <EditRowStyle BackColor="#2461BF" />
            <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="MaHoaDon" HeaderText="Mã hóa đơn" InsertVisible="False" ReadOnly="True" SortExpression="MaHoaDon" />
                <asp:BoundField DataField="NgayLap" HeaderText="Ngày lập" SortExpression="NgayLap" />
                <asp:BoundField DataField="TenKhachHang" HeaderText="Tên khách hàng" SortExpression="TenKhachHang" />
                <asp:BoundField DataField="DiaChiKhachHang" HeaderText="Địa chỉ" SortExpression="DiaChiKhachHang" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="SoDienThoai" HeaderText="Số điện thoại" SortExpression="SoDienThoai" />
                <asp:BoundField DataField="TongTien" HeaderText="Tổng tiền" SortExpression="TongTien" />
                <asp:BoundField DataField="PhiVanChuyen" HeaderText="Phí vận chuyển" SortExpression="PhiVanChuyen" />
                <asp:BoundField DataField="TenTaiKhoan" HeaderText="Tên tài khoản" SortExpression="TenTaiKhoan" />
            </Fields>
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
        </asp:DetailsView>
            </td>
            <td>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MaSanPham,MaHoaDon" DataSourceID="sqlChiTietHoaDon" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="MaHoaDon" HeaderText="Mã hóa đơn" ReadOnly="True" SortExpression="MaHoaDon" />
                <asp:BoundField DataField="MaSanPham" HeaderText="Mã rượu" ReadOnly="True" SortExpression="MaSanPham" />
                <asp:BoundField DataField="SoLuong" HeaderText="Số lượng" SortExpression="SoLuong" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
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
        <tr valign="top">
            <td class="auto-style31">&nbsp;</td>
            <td class="auto-style32" colspan="2">
                <br />
                <asp:Label ID="Label10" runat="server" Font-Italic="True" Font-Size="15pt" Text="Cảm ơn quý khách đã sử dụng sản phẩm của chúng tôi"></asp:Label>
                <br />
                <br />
                <asp:Button ID="btnTiepTucMua" runat="server" OnClick="btnTiepTucMua_Click" Text="Tiếp tục mua hàng" />
            </td>
        </tr>
    </table>
    <p>
        <asp:SqlDataSource ID="sqlHoaDon" runat="server" ConnectionString="<%$ ConnectionStrings:Nhom6WFConnectionString2 %>" SelectCommand="SELECT [MaHoaDon], [NgayLap], [TenKhachHang], [DiaChiKhachHang], [Email], [SoDienThoai], [TongTien], [PhiVanChuyen], [TenTaiKhoan] FROM [HoaDon] WHERE ([MaHoaDon] = @MaHoaDon)">
            <SelectParameters>
                <asp:QueryStringParameter Name="MaHoaDon" QueryStringField="MaHoaDon" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        <asp:SqlDataSource ID="sqlChiTietHoaDon" runat="server" ConnectionString="<%$ ConnectionStrings:Nhom6WFConnectionString2 %>" SelectCommand="SELECT * FROM [ChiTietHoaDon] WHERE ([MaHoaDon] = @MaHoaDon)">
            <SelectParameters>
                <asp:QueryStringParameter Name="MaHoaDon" QueryStringField="MaHoaDon" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p></asp:Content>

