<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/BTLMasterpageAdmin/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="ThemRuou.aspx.cs" Inherits="Page_ThemRuou" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script type="text/javascript">
    function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function (e) {
                var img = document.getElementById("imgDisplay");
                img.src = e.target.result;
                //img.style.width = 200;
                //img.style.height = 250;
            };
            reader.readAsDataURL(input.files[0]);
        }
    }
    </script>
    <table class="auto-style16">
        <tr>
            <td class="auto-style2" style="width: 325px">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Overline="True" 
                    Font-Size="Large" Text="Thêm Sản Phẩm"></asp:Label>
                <br />
                <asp:SqlDataSource ID="sqlsanpham" runat="server" 
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
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="width: 325px">
                &nbsp;</td>
            <td>
                <asp:FormView ID="FormView1" runat="server" DataKeyNames="MaSanPham" 
                    DataSourceID="sqlsanpham" DefaultMode="Insert" CellPadding="4" ForeColor="#333333" OnItemInserted="FormView1_ItemInserted" Width="487px">
                    <EditItemTemplate>
                        MaSanPham:
                        <asp:Label ID="MaSanPhamLabel1" runat="server" 
                            Text='<%# Eval("MaSanPham") %>' />
                        <br />
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
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                            CommandName="Update" Text="Update" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <InsertItemTemplate>
                        <table class="auto-style16">
                            <tr>
                                <td style="width: 84px">
                                    &nbsp;</td>
                                <td style="width: 233px">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td style="width: 84px">
                                    Mã danh mục</td>
                                <td style="width: 233px">
                                    <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" 
                                        DataSourceID="sqldanhmuc" DataTextField="TenDanhMuc" 
                                        DataValueField="MaDanhMuc" SelectedValue='<%# Bind("MaDanhMuc") %>'>
                                        <asp:ListItem Value="0">--Chọn danh mục--</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="sqldanhmuc" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:Nhom6WFConnectionString %>" 
                                        SelectCommand="SELECT [MaDanhMuc], [TenDanhMuc] FROM [DanhMuc]">
                                    </asp:SqlDataSource>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                        ControlToValidate="DropDownList1" ErrorMessage="(*)" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 84px; height: 30px">
                                    Tên sản phẩm</td>
                                <td style="width: 233px; height: 30px;">
                                    <asp:TextBox ID="TenSanPhamTextBox" runat="server" style="margin-bottom: 0px" 
                                        Text='<%# Bind("TenSanPham") %>' />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                        ControlToValidate="TenSanPhamTextBox" ErrorMessage="(*)" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 84px">
                                    Xuất xứ</td>
                                <td style="width: 233px">
                                    <asp:TextBox ID="XuatXuTextBox" runat="server" 
                                        ontextchanged="XuatXuTextBox_TextChanged" Text='<%# Bind("XuatXu") %>' />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                        ControlToValidate="XuatXuTextBox" ErrorMessage="(*)" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 84px">
                                    Nồng độ</td>
                                <td style="width: 233px">
                                    <asp:TextBox ID="NongDoTextBox" runat="server" Text='<%# Bind("NongDo") %>' />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                        ControlToValidate="NongDoTextBox" ErrorMessage="(*)" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="NongDoTextBox" Display="Dynamic" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="\d{1,}(\.{0,1}\d{1,})*">Cần nhập đúng kiểu dữ liệu</asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 84px">
                                    Thể tích</td>
                                <td style="width: 233px">
                                    <asp:TextBox ID="TheTichTextBox" runat="server" Text='<%# Bind("TheTich") %>' />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                        ControlToValidate="TheTichTextBox" ErrorMessage="(*)" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="TheTichTextBox" Display="Dynamic" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="\d{1,}">Cần nhập đúng kiểu dữ liệu</asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 84px">
                                    Ảnh</td>
                                <td style="width: 233px">
                                    <asp:Image ID="imgDisplay" runat="server" Height="150px" Width="150px" 
                                        ClientIDMode="Static" />
                                    <asp:FileUpload ID="FileUpload1" runat="server" onchange="readURL(this);"/>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 84px">
                                    Mô tả</td>
                                <td style="width: 233px">
                                    <asp:TextBox ID="MoTaTextBox" runat="server" Text='<%# Bind("MoTa") %>' />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                        ControlToValidate="MoTaTextBox" ErrorMessage="(*)" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 84px">
                                    Giá</td>
                                <td style="width: 233px">
                                    <asp:TextBox ID="GiaTextBox" runat="server" Text='<%# Bind("Gia") %>' />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                        ControlToValidate="GiaTextBox" ErrorMessage="(*)" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="GiaTextBox" Display="Dynamic" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="\d{1,}">Cần nhập đúng kiểu dữ liệu</asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 84px">
                                    Số lượng</td>
                                <td style="width: 233px">
                                    <asp:TextBox ID="SoLuongTextBox" runat="server" Text='<%# Bind("SoLuong") %>' />
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                        ControlToValidate="SoLuongTextBox" ErrorMessage="(*)" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="SoLuongTextBox" Display="Dynamic" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="\d{1,}">Cần nhập đúng kiểu dữ liệu</asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 84px">
                                    Trạng thái</td>
                                <td style="width: 233px">
                                    <asp:CheckBox ID="TrangThaiCheckBox" runat="server" 
                                        Checked='<%# Bind("TrangThai") %>' />
                                </td>
                            </tr>
                        </table>
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                            CommandName="Insert" Text="Thêm mới" onclick="InsertButton_Click" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" 
                            PostBackUrl="~/Admin/Page/QuanLiHang.aspx" Text="Hủy bỏ" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <table class="auto-style16">
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
                                    <asp:Label ID="AnhLabel" runat="server" Text='<%# Bind("Anh") %>' />
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
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                </asp:FormView>
                <br />
                <asp:Label ID="lblthongbao" runat="server" Font-Bold="False" Font-Size="Large" 
                    ForeColor="Red"></asp:Label>
                <br />
            </td>   
        </tr>
    </table>


</asp:Content>

