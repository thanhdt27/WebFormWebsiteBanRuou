<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/BTLMasterpageAdmin/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="SuaHang.aspx.cs" Inherits="Page_SuaHang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table class="auto-style16">
        <asp:Label ID="Label1" runat="server" Text="Sửa Sản Phẩm" Font-Bold="True" 
            Font-Size="X-Large"></asp:Label>
        <tr>
            <td style="width: 277px">
                <asp:SqlDataSource ID="sqlruou" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:Nhom6WFConnectionString %>" 
                    DeleteCommand="DELETE FROM [SanPham] WHERE [MaSanPham] = @MaSanPham" 
                    InsertCommand="INSERT INTO [SanPham] ([MaDanhMuc], [TenSanPham], [XuatXu], [NongDo], [TheTich], [Anh], [MoTa], [Gia], [SoLuong], [TrangThai]) VALUES (@MaDanhMuc, @TenSanPham, @XuatXu, @NongDo, @TheTich, @Anh, @MoTa, @Gia, @SoLuong, @TrangThai)" 
                    SelectCommand="SELECT * FROM [SanPham] WHERE ([MaSanPham] = @MaSanPham)" 
                    UpdateCommand="UPDATE [SanPham] SET [MaDanhMuc] = @MaDanhMuc, [TenSanPham] = @TenSanPham, [XuatXu] = @XuatXu, [NongDo] = @NongDo, [TheTich] = @TheTich, [Anh] = @Anh, [MoTa] = @MoTa, [Gia] = @Gia, [SoLuong] = @SoLuong, [TrangThai] = @TrangThai WHERE [MaSanPham] = @MaSanPham">
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
                    <SelectParameters>
                        <asp:QueryStringParameter Name="MaSanPham" QueryStringField="MaSanPham" 
                            Type="Int32" />
                    </SelectParameters>
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
                <asp:FormView ID="FormView1" runat="server" BorderStyle="Solid" 
                    DataKeyNames="MaSanPham" DataSourceID="sqlruou" DefaultMode="Edit" OnItemUpdated="FormView1_ItemUpdated" Width="516px">
                    <EditItemTemplate>
                        <table class="auto-style16">
                            <tr>
                                <td style="width: 103px">
                                    Mã sản phẩm</td>
                                <td>
                                    <asp:Label ID="MaSanPhamLabel1" runat="server" 
                                        Text='<%# Eval("MaSanPham") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 103px">
                                    Mã danh mục</td>
                                <td>
                                    <asp:SqlDataSource ID="sqldanhmuc" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:Nhom6WFConnectionString %>" 
                                        SelectCommand="SELECT [MaDanhMuc], [TenDanhMuc] FROM [DanhMuc]">
                                    </asp:SqlDataSource>
                                    <br />
                                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                                        DataSourceID="sqldanhmuc" DataTextField="TenDanhMuc" DataValueField="MaDanhMuc" 
                                        SelectedValue='<%# Bind("MaDanhMuc") %>'>
                                    </asp:DropDownList>
                                    <br />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                        ControlToValidate="DropDownList1" ErrorMessage="(*)" Font-Bold="False" 
                                        ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 103px">
                                    Tên sản phẩm</td>
                                <td>
                                    <asp:TextBox ID="TenSanPhamTextBox" runat="server" 
                                        Text='<%# Bind("TenSanPham") %>' />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                        ControlToValidate="TenSanPhamTextBox" ErrorMessage="(*)" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 103px">
                                    Xuất xứ</td>
                                <td>
                                    <asp:TextBox ID="XuatXuTextBox" runat="server" Text='<%# Bind("XuatXu") %>' />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                        ControlToValidate="XuatXuTextBox" ErrorMessage="(*)" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 103px">
                                    Nồng độ</td>
                                <td>
                                    <asp:TextBox ID="NongDoTextBox" runat="server" Text='<%# Bind("NongDo") %>' />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                        ControlToValidate="NongDoTextBox" ErrorMessage="(*)" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="NongDoTextBox" Display="Dynamic" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="\d{1,}(\.{0,1}\d{1,})*">Cần nhập đúng kiểu dữ liệu</asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 103px">
                                    Thể tích</td>
                                <td>
                                    <asp:TextBox ID="TheTichTextBox" runat="server" Text='<%# Bind("TheTich") %>' />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                        ControlToValidate="TheTichTextBox" ErrorMessage="(*)" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TheTichTextBox" Display="Dynamic" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="\d{1,}">Cần nhập đúng kiểu dữ liệu</asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 103px">
                                    Ảnh</td>
                                <td>
                                    <asp:TextBox ID="AnhTextBox" runat="server" Text='<%# Bind("Anh") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 103px">
                                    Mô tả</td>
                                <td>
                                    <asp:TextBox ID="MoTaTextBox" runat="server" Height="89px" 
                                        Text='<%# Bind("MoTa") %>' TextMode="MultiLine" />
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 103px">
                                    Giá</td>
                                <td>
                                    <asp:TextBox ID="GiaTextBox" runat="server" Text='<%# Bind("Gia") %>' />
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="GiaTextBox" Display="Dynamic" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="\d{1,}">Cần nhập đúng kiểu dữ liệu</asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 103px">
                                    Số lượng</td>
                                <td>
                                    <asp:TextBox ID="SoLuongTextBox" runat="server" Text='<%# Bind("SoLuong") %>' />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                        ControlToValidate="SoLuongTextBox" ErrorMessage="(*)" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="SoLuongTextBox" Display="Dynamic" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="\d{1,}">Cần nhập đúng kiểu dữ liệu</asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 103px">
                                    Trạng thái</td>
                                <td>
                                    <asp:CheckBox ID="TrangThaiCheckBox" runat="server" 
                                        Checked='<%# Bind("TrangThai") %>' />
                                </td>
                            </tr>
                        </table>
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                            CommandName="Update" Text="Cập nhật" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" 
                            PostBackUrl="~/Admin/Page/QuanLiHang.aspx" Text="Hủy bỏ" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        MaDanhMuc:
                        <asp:TextBox ID="MaDanhMucTextBox" runat="server" 
                            Text='<%# Bind("MaDanhMuc") %>' />
                        <br />
                        TenSanPham:
                        <asp:TextBox ID="TenSanPhamTextBox" runat="server" 
                            Text='<%# Bind("TenSanPham") %>' />
                        <br />
                        XuatXu:
                        <asp:TextBox ID="XuatXuTextBox" runat="server" Text='<%# Bind("XuatXu") %>' />
                        <br />
                        NongDo:
                        <asp:TextBox ID="NongDoTextBox" runat="server" Text='<%# Bind("NongDo") %>' />
                        <br />
                        TheTich:
                        <asp:TextBox ID="TheTichTextBox" runat="server" Text='<%# Bind("TheTich") %>' />
                        <br />
                        Anh:
                        <asp:TextBox ID="AnhTextBox" runat="server" Text='<%# Bind("Anh") %>' />
                        <br />
                        MoTa:
                        <asp:TextBox ID="MoTaTextBox" runat="server" Text='<%# Bind("MoTa") %>' />
                        <br />
                        Gia:
                        <asp:TextBox ID="GiaTextBox" runat="server" Text='<%# Bind("Gia") %>' />
                        <br />
                        SoLuong:
                        <asp:TextBox ID="SoLuongTextBox" runat="server" Text='<%# Bind("SoLuong") %>' />
                        <br />
                        TrangThai:
                        <asp:CheckBox ID="TrangThaiCheckBox" runat="server" 
                            Checked='<%# Bind("TrangThai") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                            CommandName="Insert" Text="Insert" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <table border="2" class="auto-style16">
                            <tr>
                                <td>
                                    Mã sản phẩm</td>
                                <td>
                                    <asp:Label ID="MaSanPhamLabel" runat="server" Text='<%# Eval("MaSanPham") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Mã danh mục</td>
                                <td>
                                    <asp:Label ID="MaDanhMucLabel" runat="server" Text='<%# Bind("MaDanhMuc") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Tên sản phẩm</td>
                                <td>
                                    <asp:Label ID="TenSanPhamLabel" runat="server" 
                                        Text='<%# Bind("TenSanPham") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Xuất xứ</td>
                                <td>
                                    <asp:Label ID="XuatXuLabel" runat="server" Text='<%# Bind("XuatXu") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Nồng độ</td>
                                <td>
                                    <asp:Label ID="NongDoLabel" runat="server" Text='<%# Bind("NongDo") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Thể tích</td>
                                <td>
                                    <asp:Label ID="TheTichLabel" runat="server" Text='<%# Bind("TheTich") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Ảnh</td>
                                <td>
                                    <asp:Image ID="Image1" runat="server" Height="100px" 
                                        ImageUrl='<%# Eval("Anh", "~/Images/{0}") %>' Width="100px" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Mô tả</td>
                                <td>
                                    <asp:Label ID="MoTaLabel" runat="server" Text='<%# Bind("MoTa") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Giá</td>
                                <td>
                                    <asp:Label ID="GiaLabel" runat="server" Text='<%# Bind("Gia") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Số lượng</td>
                                <td>
                                    <asp:Label ID="SoLuongLabel" runat="server" Text='<%# Bind("SoLuong") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Trạng thái</td>
                                <td>
                                    <asp:CheckBox ID="TrangThaiCheckBox" runat="server" 
                                        Checked='<%# Bind("TrangThai") %>' Enabled="false" />
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
                </asp:FormView>
                <br />
                <br />
                <asp:Label ID="lblloi" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 277px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

