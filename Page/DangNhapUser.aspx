<%@ Page Title="" Language="C#" MasterPageFile="~/Page/MasterPageClient.master" AutoEventWireup="true" CodeFile="DangNhapUser.aspx.cs" Inherits="DangNhapUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style31 {
            width: 102px;
        }
        .auto-style33 {
            width: 101px;
        }
        .auto-style34 {
            font-size: x-large;
        }
        .auto-style35 {
            width: 101px;
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <table class="auto-style16">
    <tr>
        <td class="auto-style31">&nbsp;</td>
        <td class="auto-style31">&nbsp;</td>
        <td class="auto-style35">&nbsp;</td>
        <td class="auto-style34"><strong>Thông tin tài khoản</strong></td>
    </tr>
    <tr>
        <td class="auto-style31">&nbsp;</td>
        <td class="auto-style31">&nbsp;</td>
        <td class="auto-style33">
            <asp:SqlDataSource ID="sqlDsThongTin" runat="server" ConnectionString="<%$ ConnectionStrings:Nhom6WFConnectionString %>" DeleteCommand="DELETE FROM [TaiKhoan] WHERE [TenTaiKhoan] = @TenTaiKhoan" InsertCommand="INSERT INTO [TaiKhoan] ([HoTen], [Email], [SoDienThoai], [TenTaiKhoan], [MatKhau], [DiaChi]) VALUES (@HoTen, @Email, @SoDienThoai, @TenTaiKhoan, @MatKhau, @DiaChi)" SelectCommand="SELECT [HoTen], [Email], [SoDienThoai], [TenTaiKhoan], [MatKhau], [DiaChi] FROM [TaiKhoan] WHERE ([TenTaiKhoan] = @TenTaiKhoan)" UpdateCommand="UPDATE [TaiKhoan] SET [HoTen] = @HoTen, [Email] = @Email, [SoDienThoai] = @SoDienThoai, [MatKhau] = @MatKhau, [DiaChi] = @DiaChi WHERE [TenTaiKhoan] = @TenTaiKhoan">
                <DeleteParameters>
                    <asp:Parameter Name="TenTaiKhoan" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="HoTen" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="SoDienThoai" Type="String" />
                    <asp:Parameter Name="TenTaiKhoan" Type="String" />
                    <asp:Parameter Name="MatKhau" Type="String" />
                    <asp:Parameter Name="DiaChi" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:QueryStringParameter Name="TenTaiKhoan" QueryStringField="TenDangNhap" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="HoTen" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="SoDienThoai" Type="String" />
                    <asp:Parameter Name="MatKhau" Type="String" />
                    <asp:Parameter Name="DiaChi" Type="String" />
                    <asp:Parameter Name="TenTaiKhoan" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </td>
        <td>
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="TenTaiKhoan" DataSourceID="sqlDsThongTin" Height="150px" Width="300px" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                <EditRowStyle BackColor="#999999" BorderStyle="None" />
                <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="HoTen" HeaderText="Họ Tên" SortExpression="HoTen" />

                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="SoDienThoai" HeaderText="Số Điện Thoại" SortExpression="SoDienThoai">
                    </asp:BoundField>
                    <asp:BoundField DataField="TenTaiKhoan" HeaderText="Tên Tài Khoản" SortExpression="TenTaiKhoan" ReadOnly="True">
                    </asp:BoundField>
                    <asp:BoundField DataField="MatKhau" HeaderText="Mật khẩu" SortExpression="MatKhau">
                    </asp:BoundField>
                    <asp:BoundField DataField="DiaChi" HeaderText="Địa chỉ" SortExpression="DiaChi">
                    </asp:BoundField>
                    <asp:CommandField ButtonType="Button" CancelText="Hủy" DeleteText="Xóa" EditText="Sửa thông tin" InsertText="Thêm" ShowEditButton="True" />
                </Fields>
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            </asp:DetailsView>
        </td>
    </tr>
</table>
</asp:Content>

