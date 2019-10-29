<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/BTLMasterpageAdmin/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="ChiTietDonHang.aspx.cs" Inherits="Admin_Page_ChiTietDonHang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style16">
        <tr>
            <td style="width: 346px">
                &nbsp;</td>
            <td><strong>
                <asp:Label ID="Label10" runat="server" style="font-size: xx-large" Text="Chi Tiết Đơn Hàng"></asp:Label>
                </strong></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 346px">
                <asp:Image ID="Image1" runat="server" Height="300px" ImageUrl="~/Admin/Images/Admin.png" Width="300px" />
            </td>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="MaSanPham,MaHoaDon" DataSourceID="sqlDsChiTietDonHang" ForeColor="#333333" GridLines="None" style="margin-left: 0px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="MaSanPham" HeaderText="Mã Sản Phẩm" ReadOnly="True" SortExpression="MaSanPham" />
                        <asp:BoundField DataField="MaHoaDon" HeaderText="Mã Hóa Đơn" ReadOnly="True" SortExpression="MaHoaDon" />
                        <asp:BoundField DataField="SoLuong" HeaderText="Số Lượng" SortExpression="SoLuong" />
                        <asp:CommandField ButtonType="Button" DeleteText="Xóa" ShowDeleteButton="True" />
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
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 346px">&nbsp;</td>
            <td>
                <asp:SqlDataSource ID="sqlDsChiTietDonHang" runat="server" ConnectionString="<%$ ConnectionStrings:Nhom6WFConnectionString %>" SelectCommand="SELECT * FROM [ChiTietHoaDon] WHERE ([MaHoaDon] = @MaHoaDon)" DeleteCommand="DELETE FROM [ChiTietHoaDon] WHERE [MaSanPham] = @MaSanPham AND [MaHoaDon] = @MaHoaDon" InsertCommand="INSERT INTO [ChiTietHoaDon] ([MaSanPham], [MaHoaDon], [SoLuong]) VALUES (@MaSanPham, @MaHoaDon, @SoLuong)" UpdateCommand="UPDATE [ChiTietHoaDon] SET [SoLuong] = @SoLuong WHERE [MaSanPham] = @MaSanPham AND [MaHoaDon] = @MaHoaDon">
                    <DeleteParameters>
                        <asp:Parameter Name="MaSanPham" Type="Int32" />
                        <asp:Parameter Name="MaHoaDon" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="MaSanPham" Type="Int32" />
                        <asp:Parameter Name="MaHoaDon" Type="Int32" />
                        <asp:Parameter Name="SoLuong" Type="Int32" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:QueryStringParameter Name="MaHoaDon" QueryStringField="MaHoaDon" Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="SoLuong" Type="Int32" />
                        <asp:Parameter Name="MaSanPham" Type="Int32" />
                        <asp:Parameter Name="MaHoaDon" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 346px">&nbsp;</td>
            <td>
                <asp:Button ID="btnBack" runat="server" PostBackUrl="~/Admin/Page/DanhSachDonHang.aspx" Text="Quay Lại" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 346px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

