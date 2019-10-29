<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/BTLMasterpageAdmin/MasterPageAdmin.master"  AutoEventWireup="true" CodeFile="QuanLiTaiKhoan.aspx.cs" Inherits="BTLMasterpageAdmin_QuanLiTaiKhoan" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <p>
    <table class="auto-style16">
        <tr>
            <td class="auto-style2">
                <asp:SqlDataSource ID="sqlloaitk" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:Nhom6WFConnectionString %>" 
                    SelectCommand="SELECT DISTINCT [LoaiTaiKhoan] FROM [TaiKhoan]"></asp:SqlDataSource>
            </td>
            <td>
    <asp:Label ID="Label1" runat="server" Text="QUẢN LÍ TÀI KHOẢN" Font-Bold="True" 
                    Font-Size="X-Large"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label18" runat="server" Font-Bold="True" Text="Loại tài khoản    "></asp:Label>
&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    DataSourceID="sqlloaitk" DataTextField="LoaiTaiKhoan" 
                    DataValueField="LoaiTaiKhoan" AppendDataBoundItems="True">
                    <asp:ListItem Value="Default">--Chọn tài khoản--</asp:ListItem>
                </asp:DropDownList>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:SqlDataSource ID="sqktaikhoan" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:Nhom6WFConnectionString %>" 
                    DeleteCommand="DELETE FROM [TaiKhoan] WHERE [TenTaiKhoan] = @TenTaiKhoan" 
                    InsertCommand="INSERT INTO [TaiKhoan] ([HoTen], [Email], [SoDienThoai], [TenTaiKhoan], [MatKhau], [LoaiTaiKhoan], [DiaChi], [TinhTrang]) VALUES (@HoTen, @Email, @SoDienThoai, @TenTaiKhoan, @MatKhau, @LoaiTaiKhoan, @DiaChi, @TinhTrang)" 
                    SelectCommand="SELECT * FROM [TaiKhoan] WHERE ([LoaiTaiKhoan] = @LoaiTaiKhoan)" 
                    UpdateCommand="UPDATE [TaiKhoan] SET [HoTen] = @HoTen, [Email] = @Email, [SoDienThoai] = @SoDienThoai, [MatKhau] = @MatKhau, [LoaiTaiKhoan] = @LoaiTaiKhoan, [DiaChi] = @DiaChi, [TinhTrang] = @TinhTrang WHERE [TenTaiKhoan] = @TenTaiKhoan">
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
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="LoaiTaiKhoan" 
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
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
            </td>
            <td>
                <br />
                <br />
                <asp:FormView ID="FormView1" runat="server" AllowPaging="True" 
                    DataKeyNames="TenTaiKhoan" DataSourceID="sqktaikhoan" BackColor="#DEBA84" 
                    BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                    CellSpacing="2" GridLines="Both" Width="466px" OnItemDeleted="FormView1_ItemDeleted" OnItemInserted="FormView1_ItemInserted" OnItemUpdated="FormView1_ItemUpdated">
                    <EditItemTemplate>
                        <table class="auto-style16">
                            <tr>
                                <td style="width: 112px">
                                    Họ tên</td>
                                <td>
                                    <asp:TextBox ID="HoTenTextBox" runat="server" Text='<%# Bind("HoTen") %>' />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="HoTenTextBox" ErrorMessage="RequiredFieldValidator" ForeColor="Red">(*)</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 112px">
                                    Email</td>
                                <td>
                                    <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="EmailTextBox" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red">(*)</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailTextBox" Display="Dynamic" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Cần nhập đúng Email</asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 112px">
                                    Số điện thoại</td>
                                <td>
                                    <asp:TextBox ID="SoDienThoaiTextBox" runat="server" 
                                        Text='<%# Bind("SoDienThoai") %>' />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="SoDienThoaiTextBox" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red">(*)</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="SoDienThoaiTextBox" Display="Dynamic" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="\d{9,12}">Cần nhập đúng SĐT</asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 112px">
                                    Tên tài khoản</td>
                                <td>
                                    <asp:Label ID="TenTaiKhoanLabel1" runat="server" 
                                        Text='<%# Eval("TenTaiKhoan") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 112px">
                                    Mật khẩu</td>
                                <td>
                                    <asp:TextBox ID="MatKhauTextBox" runat="server" Text='<%# Bind("MatKhau") %>' />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="MatKhauTextBox" ErrorMessage="RequiredFieldValidator" ForeColor="Red">(*)</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 112px">
                                    Loại tài khoản</td>
                                <td>
                                    <asp:DropDownList ID="DropDownList2" runat="server" AppendDataBoundItems="True" 
                                        SelectedValue='<%# Bind("LoaiTaiKhoan") %>'>
                                        <asp:ListItem>Admin</asp:ListItem>
                                        <asp:ListItem>User</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                        ControlToValidate="DropDownList2" ErrorMessage="(*)" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 112px">
                                    Địa chỉ</td>
                                <td>
                                    <asp:TextBox ID="DiaChiTextBox" runat="server" Text='<%# Bind("DiaChi") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 112px">
                                    Tình trạng</td>
                                <td>
                                    <asp:TextBox ID="TinhTrangTextBox" runat="server" 
                                        Text='<%# Bind("TinhTrang") %>' />
                                </td>
                            </tr>
                        </table>
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                            CommandName="Update" Text="Cập nhật" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="Hủy bỏ" />
                    </EditItemTemplate>
                    <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <InsertItemTemplate>
                        <table border="1" class="auto-style16">
                            <tr>
                                <td>
                                    <asp:Label ID="Label10" runat="server" Font-Bold="True" Text="Họ tên" 
                                        Width="100px"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="HoTenTextBox" runat="server" Text='<%# Bind("HoTen") %>' />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="HoTenTextBox" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red">(*)</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label11" runat="server" Font-Bold="True" Text="Email" 
                                        Width="100px"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="EmailTextBox" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red">(*)</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="EmailTextBox" Display="Dynamic" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Cần nhập đúng Email</asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label12" runat="server" Font-Bold="True" Text="Số điện thoại" 
                                        Width="100px"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="SoDienThoaiTextBox" runat="server" 
                                        Text='<%# Bind("SoDienThoai") %>' />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="SoDienThoaiTextBox" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red">(*)</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="SoDienThoaiTextBox" Display="Dynamic" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="\d{9,12}">Cần nhập đúng SĐT</asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label13" runat="server" Font-Bold="True" Text="Tên tài khoản" 
                                        Width="100px"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TenTaiKhoanTextBox" runat="server" 
                                        Text='<%# Bind("TenTaiKhoan") %>' />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TenTaiKhoanTextBox" ErrorMessage="RequiredFieldValidator" ForeColor="Red">(*)</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label14" runat="server" Font-Bold="True" Text="Mật khẩu" 
                                        Width="100px"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="MatKhauTextBox" runat="server" Text='<%# Bind("MatKhau") %>' />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="MatKhauTextBox" ErrorMessage="RequiredFieldValidator" ForeColor="Red">(*)</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label15" runat="server" Font-Bold="True" Text="Loại tài khoản" 
                                        Width="100px"></asp:Label>
                                </td>
                                <td>
                                    <asp:DropDownList ID="DropDownList3" runat="server" 
                                        SelectedValue='<%# Bind("LoaiTaiKhoan") %>'>
                                        <asp:ListItem Value="NULL">--Chọn loại tài khoản--</asp:ListItem>
                                        <asp:ListItem>Admin</asp:ListItem>
                                        <asp:ListItem>User</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="DropDownList3" ErrorMessage="RequiredFieldValidator" ForeColor="Red">(*)</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label16" runat="server" Font-Bold="True" Text="Địa chỉ" 
                                        Width="100px"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="DiaChiTextBox" runat="server" Text='<%# Bind("DiaChi") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label17" runat="server" Font-Bold="True" Text="Tình trạng" 
                                        Width="100px"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="TinhTrangTextBox" runat="server" 
                                        Text='<%# Bind("TinhTrang") %>' />
                                </td>
                            </tr>
                        </table>
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                            CommandName="Insert" Text="Thêm mới" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="Hủy bỏ" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <table border="1" class="auto-style16">
                            <tr>
                                <td style="width: 113px">
                                    <asp:Label ID="Label10" runat="server" Font-Bold="True" Text="Họ tên" 
                                        Width="100px"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="HoTenLabel" runat="server" Text='<%# Bind("HoTen") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 113px">
                                    <asp:Label ID="Label11" runat="server" Font-Bold="True" Text="Email" 
                                        Width="100px"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="EmailLabel" runat="server" Text='<%# Bind("Email") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 113px">
                                    <asp:Label ID="Label12" runat="server" Font-Bold="True" Text="Số điện thoại" 
                                        Width="100px"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="SoDienThoaiLabel" runat="server" 
                                        Text='<%# Bind("SoDienThoai") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 113px">
                                    <asp:Label ID="Label13" runat="server" Font-Bold="True" Text="Tên tài khoản" 
                                        Width="100px"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="TenTaiKhoanLabel" runat="server" 
                                        Text='<%# Eval("TenTaiKhoan") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 113px">
                                    <asp:Label ID="Label14" runat="server" Font-Bold="True" Text="Mật khẩu" 
                                        Width="100px"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="MatKhauLabel" runat="server" Text='<%# Bind("MatKhau") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 113px">
                                    <asp:Label ID="Label15" runat="server" Font-Bold="True" Text="Loại tài khoản" 
                                        Width="100px"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="LoaiTaiKhoanLabel" runat="server" 
                                        Text='<%# Bind("LoaiTaiKhoan") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 113px">
                                    <asp:Label ID="Label16" runat="server" Font-Bold="True" Text="Địa chỉ" 
                                        Width="100px"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="DiaChiLabel" runat="server" Text='<%# Bind("DiaChi") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 113px">
                                    <asp:Label ID="Label17" runat="server" Font-Bold="True" Text="Tình trạng" 
                                        Width="100px"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="TinhTrangLabel" runat="server" Text='<%# Bind("TinhTrang") %>' />
                                </td>
                            </tr>
                        </table>
                        <br />
                        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                            CommandName="Edit" Text="Sửa" />
                        &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                            CommandName="Delete" Text="Xóa" />
                        &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                            CommandName="New" Text="Thêm" />
                    </ItemTemplate>
                    <PagerSettings FirstPageImageUrl="~/Admin/Images/First.bmp" 
                        LastPageImageUrl="~/Admin/Images/Last.bmp" Mode="NextPreviousFirstLast" 
                        NextPageImageUrl="~/Admin/Images/Next.bmp" 
                        PreviousPageImageUrl="~/Admin/Images/Previous.bmp" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                </asp:FormView>
                <br />
                <asp:Label ID="lblThongBao" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
    </table>
    <br />
</p>
<p>
</p>
</asp:Content>

