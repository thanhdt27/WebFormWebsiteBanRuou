<%@ Page Title="" Language="C#" MasterPageFile="~/Page/MasterPageClient.master" AutoEventWireup="true" CodeFile="DatMua.aspx.cs" Inherits="DatMua" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style30 {
            width: 173px;
        }
        .auto-style31 {
            width: 403px;
        }
        .auto-style32 {
            width: 131px;
        }
        .auto-style33 {
            width: 114px;
        }
        .auto-style34 {
        width: 131px;
        height: 26px;
    }
    .auto-style35 {
        height: 26px;
    }
        .auto-style37 {
            width: 38px;
        }
        .auto-style39 {
        }
        .auto-style40 {
        }
        .auto-style41 {
            width: 150px;
        }
        .auto-style42 {
            width: 500px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table class="auto-style16">
        <tr>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style42"><h2>Thông tin đặt hàng</h2></td>
            <td class="auto-style40" colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style39" colspan="2">
    <asp:Label ID="lblThongBao2" runat="server" Font-Italic="True" Font-Size="14pt" ForeColor="#333333"></asp:Label>
            </td>
            <td>
                <asp:Button ID="btnYes" runat="server" CausesValidation="False" ForeColor="#333333" OnClick="Button1_Click" Text="Yes" />
            </td>
        </tr>
    </table>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="lblThongBao" runat="server"></asp:Label>
    <br />
    <table class="auto-style16">
        <tr valign="top">
            <td class="auto-style41">
                &nbsp;</td>
            <td class="auto-style31">
                <asp:Panel ID="Panel3" runat="server" GroupingText="Địa chỉ giao hàng">
                    <table class="auto-style16">
                        <tr>
                            <td class="auto-style32">
                                <asp:Label ID="lblTenNguoiNhan" runat="server" Text="Tên người nhận"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtTenNguoiNhan" runat="server" Width="160px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="reqTenNguoiNhan" runat="server" ControlToValidate="txtTenNguoiNhan" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Tên người nhận không được để trống</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style32">
                                <asp:Label ID="lblDiaChi" runat="server" Text="Địa chỉ"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtDiaChi" runat="server" Width="160px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="reqDiaChiKhongDuocDeTrong" runat="server" ControlToValidate="txtDiaChi" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Địa chỉ không được để trống</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style32">
                                <asp:Label ID="lblSoDienThoai" runat="server" Text="Điện thoại"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtDienThoai" runat="server" Width="160px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="reqDienThoaiKhongDuocDeTrong" runat="server" ControlToValidate="txtDienThoai" ErrorMessage="RequiredFieldValidator" ForeColor="Red" Display="Dynamic">Số điện thoại không được để trống</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtDienThoai" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="\d{9,12}">Cần nhập đúng định dạng SDT 9-12 số</asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style34">
                                <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
                            </td>
                            <td class="auto-style35">
                                <asp:TextBox ID="txtEmail" runat="server" Width="160px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="reqEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="RequiredFieldValidator" ForeColor="Red" Display="Dynamic">Email không được đê trống</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Cần nhập đúng định dạng Email</asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style32">
                                <asp:Label ID="lblNgayDat" runat="server" Text="Ngày đặt"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="lblNgay" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style32">Tài khoản</td>
                            <td>
                                <asp:Label ID="lblTenDangNhap" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
                <br />
                <asp:Panel ID="Panel4" runat="server" GroupingText="Thông tin thanh toán">
                    <asp:CheckBox ID="chbThanhToanKhiNhanHang" runat="server" OnCheckedChanged="chbThanhToanKhiNhanHang_CheckedChanged" Text="Thanh toán khi nhận hàng" AutoPostBack="True" />
                    <br />
                    <asp:Label ID="Label4" runat="server" Text="Thông tin thẻ thanh toán"></asp:Label>
                    <br />
                    <table class="auto-style16">
                        <tr>
                            <td class="auto-style33">
                                <asp:Label ID="Label5" runat="server" Text="Ngân hàng"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="ddlNganHang" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlNganHang_SelectedIndexChanged" Width="150px">
                                    <asp:ListItem>VietcomBank</asp:ListItem>
                                    <asp:ListItem>TechcomBank</asp:ListItem>
                                    <asp:ListItem>MaritimeBank</asp:ListItem>
                                    <asp:ListItem>ViettinBank</asp:ListItem>
                                    <asp:ListItem>BIDV</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style33">
                                <asp:Label ID="Label6" runat="server" Text="Mã thẻ"></asp:Label>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="reqMaThe" runat="server" ControlToValidate="txtMaThe" Display="Dynamic" Enabled="False" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Không được để trống mã thẻ</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="regMaThe" runat="server" ControlToValidate="txtMaThe" Display="Dynamic" Enabled="False" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="\d{9,12}">Cần nhập đúng định dạng mã thẻ 9-12 số</asp:RegularExpressionValidator>
                                <asp:TextBox ID="txtMaThe" runat="server" Width="169px"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                    <br />
                    <br />
                </asp:Panel>
            </td>
            <td>
                <asp:Panel ID="Panel5" runat="server" GroupingText="Thông tin đặt hàng" Width="623px">
                    <br />
                    <asp:GridView ID="gvDanhSachDatHang" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="MaHang" HeaderText="Mã hàng">
                            <ItemStyle Width="90px" />
                            </asp:BoundField>
                            <asp:TemplateField HeaderText="Tên hàng">
                                <ItemTemplate>
                                    <asp:Label ID="lblTenHang" runat="server" Text='<%# Eval("TenHang") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle Width="250px" />
                            </asp:TemplateField>
                            <asp:BoundField DataField="Gia" HeaderText="Giá" />
                            <asp:BoundField DataField="SoLuong" HeaderText="Số lượng">
                            <ItemStyle Width="90px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ThanhTien" HeaderText="Thành tiền">
                            <ItemStyle Width="90px" />
                            </asp:BoundField>
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
                    <br />
                </asp:Panel>
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblTongTien" runat="server" Font-Bold="True" Font-Size="15pt"></asp:Label>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label10" runat="server" Text="Phí vận chuyển      " Font-Bold="True" Font-Size="13pt"></asp:Label>
&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblPhiVanChuyen" runat="server" Text="15000"></asp:Label>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
                <asp:Button ID="btnDatMua" runat="server" OnClick="btnDatMua_Click" Text="Đặt mua" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnHuyBo" runat="server" OnClick="btnHuyBo_Click" Text="Hủy bỏ" CausesValidation="False" />
                <br />
                <br />
                <asp:SqlDataSource ID="sqlHoaDon" runat="server" ConnectionString="<%$ ConnectionStrings:Nhom6WFConnectionString2 %>" DeleteCommand="DELETE FROM [HoaDon] WHERE [MaHoaDon] = @MaHoaDon" InsertCommand="INSERT INTO [HoaDon] ([NgayLap], [TenKhachHang], [DiaChiKhachHang], [Email], [SoDienThoai], [TongTien], [PhiVanChuyen], [TinhTrang], [TenTaiKhoan]) VALUES (@NgayLap, @TenKhachHang, @DiaChiKhachHang, @Email, @SoDienThoai, @TongTien, @PhiVanChuyen, @TinhTrang, @TenTaiKhoan);Select @madonhang=SCOPE_IDENTITY()" SelectCommand="SELECT * FROM [HoaDon]" UpdateCommand="UPDATE [HoaDon] SET [NgayLap] = @NgayLap, [TenKhachHang] = @TenKhachHang, [DiaChiKhachHang] = @DiaChiKhachHang, [Email] = @Email, [SoDienThoai] = @SoDienThoai, [TongTien] = @TongTien, [PhiVanChuyen] = @PhiVanChuyen, [TinhTrang] = @TinhTrang, [TenTaiKhoan] = @TenTaiKhoan WHERE [MaHoaDon] = @MaHoaDon" OnInserted="sqlHoaDon_Inserted">
                    <DeleteParameters>
                        <asp:Parameter Name="MaHoaDon" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="madonhang" Direction="Output" Type="Int32" />
                        <asp:Parameter Name="NgayLap" Type="DateTime" />
                        <asp:Parameter Name="TenKhachHang" Type="String" />
                        <asp:Parameter Name="DiaChiKhachHang" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="SoDienThoai" Type="String" />
                        <asp:Parameter Name="TongTien" Type="Int32" />
                        <asp:Parameter Name="PhiVanChuyen" Type="Int32" />
                        <asp:Parameter Name="TinhTrang" Type="Boolean" />
                        <asp:Parameter Name="TenTaiKhoan" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="NgayLap" Type="DateTime" />
                        <asp:Parameter Name="TenKhachHang" Type="String" />
                        <asp:Parameter Name="DiaChiKhachHang" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="SoDienThoai" Type="String" />
                        <asp:Parameter Name="TongTien" Type="Int32" />
                        <asp:Parameter Name="PhiVanChuyen" Type="Int32" />
                        <asp:Parameter Name="TinhTrang" Type="Boolean" />
                        <asp:Parameter Name="TenTaiKhoan" Type="String" />
                        <asp:Parameter Name="MaHoaDon" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />
                <asp:SqlDataSource ID="sqlChiTietHoaDon" runat="server" ConnectionString="<%$ ConnectionStrings:Nhom6WFConnectionString2 %>" DeleteCommand="DELETE FROM [ChiTietHoaDon] WHERE [MaSanPham] = @MaSanPham AND [MaHoaDon] = @MaHoaDon" InsertCommand="INSERT INTO [ChiTietHoaDon] ([MaSanPham], [MaHoaDon], [SoLuong]) VALUES (@MaSanPham, @MaHoaDon, @SoLuong)" SelectCommand="SELECT * FROM [ChiTietHoaDon]" UpdateCommand="UPDATE [ChiTietHoaDon] SET [SoLuong] = @SoLuong WHERE [MaSanPham] = @MaSanPham AND [MaHoaDon] = @MaHoaDon">
                    <DeleteParameters>
                        <asp:Parameter Name="MaSanPham" Type="Int32" />
                        <asp:Parameter Name="MaHoaDon" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="MaSanPham" Type="Int32" />
                        <asp:Parameter Name="MaHoaDon" Type="Int32" />
                        <asp:Parameter Name="SoLuong" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="SoLuong" Type="Int32" />
                        <asp:Parameter Name="MaSanPham" Type="Int32" />
                        <asp:Parameter Name="MaHoaDon" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />
                <asp:SqlDataSource ID="sqlCapNhatSanPham" runat="server" ConnectionString="<%$ ConnectionStrings:Nhom6WFConnectionString2 %>" DeleteCommand="DELETE FROM [SanPham] WHERE [MaSanPham] = @MaSanPham" InsertCommand="INSERT INTO [SanPham] ([MaDanhMuc], [TenSanPham], [XuatXu], [NongDo], [TheTich], [Anh], [MoTa], [Gia], [SoLuong], [TrangThai]) VALUES (@MaDanhMuc, @TenSanPham, @XuatXu, @NongDo, @TheTich, @Anh, @MoTa, @Gia, @SoLuong, @TrangThai)" SelectCommand="SELECT * FROM [SanPham]" UpdateCommand="UPDATE [SanPham] SET [MaDanhMuc] = @MaDanhMuc, [TenSanPham] = @TenSanPham, [XuatXu] = @XuatXu, [NongDo] = @NongDo, [TheTich] = @TheTich, [Anh] = @Anh, [MoTa] = @MoTa, [Gia] = @Gia, [SoLuong] = @SoLuong, [TrangThai] = @TrangThai WHERE [MaSanPham] = @MaSanPham">
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
        </tr>
        <tr valign="top">
            <td class="auto-style41">
                &nbsp;</td>
            <td class="auto-style31">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <br />
    <br />
</asp:Content>

