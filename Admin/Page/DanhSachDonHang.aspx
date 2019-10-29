<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/BTLMasterpageAdmin/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="DanhSachDonHang.aspx.cs" Inherits="BTLMasterpageAdmin_DanhSachDonHang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style16">
        <tr>
            <td style="width: 346px">&nbsp;</td>
            <td style="text-align: center"><strong>
                <asp:Label ID="lblDanhSachDonHang" runat="server" style="font-size: x-large" Text="Danh Sách Đơn Hàng"></asp:Label>
                </strong></td>
        </tr>
        <tr>
            <td style="width: 346px">&nbsp;</td>
            <td>
                <asp:SqlDataSource ID="sqlDsDanhSachDonHang" runat="server" ConnectionString="<%$ ConnectionStrings:Nhom6WFConnectionString %>" DeleteCommand="DELETE FROM [HoaDon] WHERE [MaHoaDon] = @MaHoaDon" InsertCommand="INSERT INTO [HoaDon] ([NgayLap], [TenKhachHang], [DiaChiKhachHang], [Email], [SoDienThoai], [TongTien], [PhiVanChuyen]) VALUES (@NgayLap, @TenKhachHang, @DiaChiKhachHang, @Email, @SoDienThoai, @TongTien, @PhiVanChuyen)" SelectCommand="SELECT [MaHoaDon], [NgayLap], [TenKhachHang], [DiaChiKhachHang], [Email], [SoDienThoai], [TongTien], [PhiVanChuyen] FROM [HoaDon]" UpdateCommand="UPDATE [HoaDon] SET [NgayLap] = @NgayLap, [TenKhachHang] = @TenKhachHang, [DiaChiKhachHang] = @DiaChiKhachHang, [Email] = @Email, [SoDienThoai] = @SoDienThoai, [TongTien] = @TongTien, [PhiVanChuyen] = @PhiVanChuyen WHERE [MaHoaDon] = @MaHoaDon">
                    <DeleteParameters>
                        <asp:Parameter Name="MaHoaDon" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="NgayLap" Type="DateTime" />
                        <asp:Parameter Name="TenKhachHang" Type="String" />
                        <asp:Parameter Name="DiaChiKhachHang" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="SoDienThoai" Type="String" />
                        <asp:Parameter Name="TongTien" Type="Int32" />
                        <asp:Parameter Name="PhiVanChuyen" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="NgayLap" Type="DateTime" />
                        <asp:Parameter Name="TenKhachHang" Type="String" />
                        <asp:Parameter Name="DiaChiKhachHang" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="SoDienThoai" Type="String" />
                        <asp:Parameter Name="TongTien" Type="Int32" />
                        <asp:Parameter Name="PhiVanChuyen" Type="Int32" />
                        <asp:Parameter Name="MaHoaDon" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="width: 346px">
                <asp:Image ID="Image1" runat="server" Height="300px" ImageUrl="~/Admin/Images/Admin.png" Width="300px" />
            </td>
            <td>
                <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="MaHoaDon" DataSourceID="sqlDsDanhSachDonHang" ForeColor="#333333" GridLines="None" PageSize="7">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="MaHoaDon" HeaderText="Mã Hóa Đơn" InsertVisible="False" ReadOnly="True" SortExpression="MaHoaDon" />
                        <asp:BoundField DataField="NgayLap" HeaderText="Ngày Lập" SortExpression="NgayLap" />
                        <asp:BoundField DataField="TenKhachHang" HeaderText="Tên Khách Hàng" SortExpression="TenKhachHang" />
                        <asp:BoundField DataField="DiaChiKhachHang" HeaderText="Địa chỉ KH" SortExpression="DiaChiKhachHang" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="SoDienThoai" HeaderText="Số Điện Thoại" SortExpression="SoDienThoai" />
                        <asp:BoundField DataField="PhiVanChuyen" HeaderText="Phí Vận Chuyển" SortExpression="PhiVanChuyen" />
                        <asp:BoundField DataField="TongTien" HeaderText="Tổng Tiền" SortExpression="TongTien" />
                        <asp:HyperLinkField DataNavigateUrlFields="MaHoaDon" DataNavigateUrlFormatString="ChiTietDonHang.aspx?MaHoaDon={0}" NavigateUrl="~/Admin/Page/ChiTietDonHang.aspx" Text="Chi Tiết Đơn Hàng" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td style="width: 346px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 346px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 346px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 346px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 346px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

