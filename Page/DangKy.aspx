<%@ Page Title="" Language="C#" MasterPageFile="~/Page/MasterPageClient.master" AutoEventWireup="true" CodeFile="DangKy.aspx.cs" Inherits="DangKy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style31 {
        width: 46px;
    }
    .auto-style32 {
        width: 173px;
    }
    .auto-style33 {
        width: 46px;
        height: 23px;
    }
    .auto-style36 {
        text-align: left;
    }
    .auto-style38 {
        font-size: xx-large;
    }
    .auto-style39 {
        text-align: left;
        width: 282px;
    }
    .auto-style41 {
        height: 23px;
        width: 282px;
    }
    .auto-style42 {
        width: 282px;
    }
    .auto-style43 {
        margin-left: 42px;
    }
    .auto-style47 {
        width: 281px;
        color: #990000;
        font-size: x-large;
    }
    .auto-style48 {
        width: 281px;
        height: 23px;
        color: #990000;
        font-size: x-large;
    }
    .auto-style49 {
        width: 281px;
    }
    .auto-style50 {
        font-size: large;
    }
        .auto-style51 {
            width: 281px;
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style16">
    <tr>
        <td class="auto-style31">&nbsp;</td>
        <td class="auto-style42">&nbsp;</td>
        <td colspan="2">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style31">&nbsp;</td>
        <td class="auto-style42" style="text-align: center">&nbsp;</td>
        <td colspan="2" style="text-align: center">
            <asp:Label ID="Label10" runat="server" CssClass="auto-style38" Font-Names="Times New Roman" style="font-weight: 700; text-align: center" Text="Trang đăng ký tài khoản"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style33"></td>
        <td class="auto-style41">&nbsp;</td>
        <td class="auto-style17" colspan="3">
            <asp:SqlDataSource ID="sqlDsDangky" runat="server" ConnectionString="<%$ ConnectionStrings:Nhom6WFConnectionString %>" DeleteCommand="DELETE FROM [TaiKhoan] WHERE [TenTaiKhoan] = @TenTaiKhoan" InsertCommand="INSERT INTO [TaiKhoan] ([HoTen], [Email], [SoDienThoai], [TenTaiKhoan], [MatKhau], [LoaiTaiKhoan], [DiaChi], [TinhTrang]) VALUES (@HoTen, @Email, @SoDienThoai, @TenTaiKhoan, @MatKhau, @LoaiTaiKhoan, @DiaChi, @TinhTrang)" SelectCommand="SELECT * FROM [TaiKhoan]" UpdateCommand="UPDATE [TaiKhoan] SET [HoTen] = @HoTen, [Email] = @Email, [SoDienThoai] = @SoDienThoai, [MatKhau] = @MatKhau, [LoaiTaiKhoan] = @LoaiTaiKhoan, [DiaChi] = @DiaChi, [TinhTrang] = @TinhTrang WHERE [TenTaiKhoan] = @TenTaiKhoan">
                <DeleteParameters>
                    <asp:Parameter Name="TenTaiKhoan" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="HoTen" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="SoDienThoai" Type="String" />
                    <asp:Parameter Name="TenTaiKhoan" Type="String" />
                    <asp:Parameter Name="MatKhau" Type="String" />
                    <asp:Parameter Name="LoaiTaiKhoan" Type="String" />
                    <asp:Parameter Name="DiaChi" Type="String" />
                    <asp:Parameter Name="TinhTrang" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="HoTen" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="SoDienThoai" Type="String" />
                    <asp:Parameter Name="MatKhau" Type="String" />
                    <asp:Parameter Name="LoaiTaiKhoan" Type="String" />
                    <asp:Parameter Name="DiaChi" Type="String" />
                    <asp:Parameter Name="TinhTrang" Type="String" />
                    <asp:Parameter Name="TenTaiKhoan" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblThongBao" runat="server" ForeColor="Red"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style31">&nbsp;</td>
        <td class="auto-style39" rowspan="2">&nbsp;</td>
        <td class="auto-style36" colspan="2" rowspan="2">
            <asp:FormView ID="FormView2" runat="server" CssClass="auto-style43" DataKeyNames="TenTaiKhoan" DataSourceID="sqlDsDangky" DefaultMode="Insert" Width="492px" OnItemInserted="FormView2_ItemInserted" OnItemInserting="FormView2_ItemInserting">
                <EditItemTemplate>
                    HoTen:
                    <asp:TextBox ID="HoTenTextBox" runat="server" Text='<%# Bind("HoTen") %>' />
                    <br />
                    Email:
                    <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                    <br />
                    SoDienThoai:
                    <asp:TextBox ID="SoDienThoaiTextBox" runat="server" Text='<%# Bind("SoDienThoai") %>' />
                    <br />
                    TenTaiKhoan:
                    <asp:Label ID="TenTaiKhoanLabel1" runat="server" Text='<%# Eval("TenTaiKhoan") %>' />
                    <br />
                    MatKhau:
                    <asp:TextBox ID="MatKhauTextBox" runat="server" Text='<%# Bind("MatKhau") %>' />
                    <br />
                    LoaiTaiKhoan:
                    <asp:TextBox ID="LoaiTaiKhoanTextBox" runat="server" Text='<%# Bind("LoaiTaiKhoan") %>' />
                    <br />
                    DiaChi:
                    <asp:TextBox ID="DiaChiTextBox" runat="server" Text='<%# Bind("DiaChi") %>' />
                    <br />
                    TinhTrang:
                    <asp:TextBox ID="TinhTrangTextBox" runat="server" Text='<%# Bind("TinhTrang") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    <br />
                    &nbsp;<table class="auto-style16">
                        <tr>
                            <td class="auto-style47"><strong>Họ tên</strong></td>
                            <td>
                                <asp:TextBox ID="HoTenTextBox" runat="server" Height="25px" Text='<%# Bind("HoTen") %>' Width="300px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style47">&nbsp;</td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="HoTenTextBox" Display="Dynamic" ErrorMessage="*Họ tên không được để trống" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style47"><strong>Email</strong></td>
                            <td>
                                <asp:TextBox ID="EmailTextBox" runat="server" Height="25px" Text='<%# Bind("Email") %>' Width="300px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style47">&nbsp;</td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="EmailTextBox" Display="Dynamic" ErrorMessage="*Email không được để trống" ForeColor="Red"></asp:RequiredFieldValidator>
                                <br />
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailTextBox" Display="Dynamic" ErrorMessage="*Email không đúng định dạng" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style47"><strong>Số điện thoại</strong></td>
                            <td>
                                <asp:TextBox ID="SoDienThoaiTextBox" runat="server" Height="25px" Text='<%# Bind("SoDienThoai") %>' Width="300px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style47">&nbsp;</td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="SoDienThoaiTextBox" Display="Dynamic" ErrorMessage="*Số điện thoại không được để trống" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style47"><strong>Địa chỉ</strong></td>
                            <td>
                                <asp:TextBox ID="DiaChiTextBox" runat="server" Height="25px" Text='<%# Bind("DiaChi") %>' Width="300px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style47">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style48"><strong>Tên đăng nhập</strong></td>
                            <td class="auto-style17">
                                <asp:TextBox ID="TenTaiKhoanTextBox" runat="server" Height="25px" Text='<%# Bind("TenTaiKhoan") %>' Width="300px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style48">&nbsp;</td>
                            <td class="auto-style17">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TenTaiKhoanTextBox" Display="Dynamic" ErrorMessage="*Tên đăng nhập không được để trống" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style47"><strong>Mật khẩu</strong></td>
                            <td>
                                <asp:TextBox ID="MatKhauTextBox" runat="server" Height="25px" Text='<%# Bind("MatKhau") %>' TextMode="Password" Width="300px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style47">&nbsp;</td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TenTaiKhoanTextBox" Display="Dynamic" ErrorMessage="*Mật khẩu không được để trống" ForeColor="Red"></asp:RequiredFieldValidator>
                                <br />
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="MatKhauTextBox" Display="Dynamic" ErrorMessage="*Mật khẩu chứa từ 6 đến 20 ký tự" ForeColor="Red" ValidationExpression="\w{6,20}"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style47"><strong>Nhập lại mật khẩu</strong></td>
                            <td>
                                <asp:TextBox ID="TextBox2" runat="server" Height="25px" TextMode="Password" Width="300px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style51"></td>
                            <td class="auto-style17">
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="MatKhauTextBox" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="*Mật khẩu chưa khớp" ForeColor="Red"></asp:CompareValidator>
                                <br />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="*Cần nhập lại mật khẩu" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style49"><strong>
                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" CssClass="auto-style50" Text="Thêm tài khoản" Font-Size="X-Large" ForeColor="#CC0000" />
                               
                                </strong></td>
                            <td><strong>
                                <asp:LinkButton ID="LinkButton10" runat="server" CausesValidation="False" CssClass="auto-style50" PostBackUrl="~/TrangChu.aspx" Font-Size="X-Large" ForeColor="#CC0000">Hủy</asp:LinkButton>
                                </strong></td>
                        </tr>
                        <tr>
                            <td class="auto-style49">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </InsertItemTemplate>
                <ItemTemplate>
                    HoTen:
                    <asp:Label ID="HoTenLabel" runat="server" Text='<%# Bind("HoTen") %>' />
                    <br />
                    Email:
                    <asp:Label ID="EmailLabel" runat="server" Text='<%# Bind("Email") %>' />
                    <br />
                    SoDienThoai:
                    <asp:Label ID="SoDienThoaiLabel" runat="server" Text='<%# Bind("SoDienThoai") %>' />
                    <br />
                    TenTaiKhoan:
                    <asp:Label ID="TenTaiKhoanLabel" runat="server" Text='<%# Eval("TenTaiKhoan") %>' />
                    <br />
                    MatKhau:
                    <asp:Label ID="MatKhauLabel" runat="server" Text='<%# Bind("MatKhau") %>' />
                    <br />
                    LoaiTaiKhoan:
                    <asp:Label ID="LoaiTaiKhoanLabel" runat="server" Text='<%# Bind("LoaiTaiKhoan") %>' />
                    <br />
                    DiaChi:
                    <asp:Label ID="DiaChiLabel" runat="server" Text='<%# Bind("DiaChi") %>' />
                    <br />
                    TinhTrang:
                    <asp:Label ID="TinhTrangLabel" runat="server" Text='<%# Bind("TinhTrang") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                </ItemTemplate>
            </asp:FormView>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style31">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style31">&nbsp;</td>
        <td class="auto-style42">&nbsp;</td>
        <td colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
           
        </td>
    </tr>
    <tr>
        <td class="auto-style31">&nbsp;</td>
        <td class="auto-style42">&nbsp;</td>
        <td class="auto-style32">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style31">&nbsp;</td>
        <td class="auto-style42">&nbsp;</td>
        <td class="auto-style32">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style31">&nbsp;</td>
        <td class="auto-style42">&nbsp;</td>
        <td class="auto-style32">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

