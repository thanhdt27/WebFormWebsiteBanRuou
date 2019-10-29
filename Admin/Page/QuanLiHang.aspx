<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/BTLMasterpageAdmin/MasterPageAdmin.master"  AutoEventWireup="true" CodeFile="QuanLiHang.aspx.cs" Inherits="BTLMasterpageAdmin_QuanLiHang" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table class="auto-style16">
        <tr>
            <td class="auto-style2" style="width: 200px">
                <asp:SqlDataSource ID="sqlxemloaihang" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:Nhom6WFConnectionString %>" 
                    SelectCommand="SELECT [MaDanhMuc], [TenDanhMuc] FROM [DanhMuc]">
                </asp:SqlDataSource>
            </td>
            <td>
                <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="X-Large" 
                    Text="QUẢN LÍ HÀNG"></asp:Label>
                <br />
                <br />
                <asp:Label ID="lblloi" runat="server" ForeColor="Red"></asp:Label>
                <br />
                <br />
                <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" 
                    AutoPostBack="True" DataSourceID="sqlxemloaihang" DataTextField="TenDanhMuc" 
                    DataValueField="MaDanhMuc">
                    <asp:ListItem Value="0">--Chọn danh mục rượu--</asp:ListItem>
                </asp:DropDownList>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="width: 200px">
                <asp:SqlDataSource ID="sqlxemchitietruou" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:Nhom6WFConnectionString %>" 
                    DeleteCommand="DELETE FROM [SanPham] WHERE [MaSanPham] = @MaSanPham" 
                    InsertCommand="INSERT INTO [SanPham] ([MaDanhMuc], [TenSanPham], [XuatXu], [NongDo], [TheTich], [Anh], [MoTa], [Gia], [SoLuong], [TrangThai]) VALUES (@MaDanhMuc, @TenSanPham, @XuatXu, @NongDo, @TheTich, @Anh, @MoTa, @Gia, @SoLuong, @TrangThai)" 
                    SelectCommand="SELECT * FROM [SanPham] WHERE ([MaDanhMuc] = @MaDanhMuc)" 
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
                        <asp:ControlParameter ControlID="DropDownList1" Name="MaDanhMuc" 
                            PropertyName="SelectedValue" Type="Int32" />
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
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" DataKeyNames="MaSanPham" 
                    DataSourceID="sqlxemchitietruou" PageSize="5" Width="1500px" 
                    onrowdeleted="GridView1_RowDeleted">
                    <Columns>
                        <asp:BoundField DataField="MaSanPham" HeaderText="Mã sản phẩm" 
                            InsertVisible="False" ReadOnly="True" SortExpression="MaSanPham" />
                        <asp:BoundField DataField="MaDanhMuc" HeaderText="Mã danh mục" 
                            SortExpression="MaDanhMuc" />
                        <asp:BoundField DataField="TenSanPham" HeaderText="Tên danh mục" 
                            SortExpression="TenSanPham" >
                        <ItemStyle Width="150px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="XuatXu" HeaderText="Xuất sứ" 
                            SortExpression="XuatXu" />
                        <asp:BoundField DataField="NongDo" HeaderText="Nồng độ" 
                            SortExpression="NongDo" />
                        <asp:BoundField DataField="TheTich" HeaderText="Thể tích" 
                            SortExpression="TheTich" />
                        <asp:BoundField DataField="MoTa" HeaderText="Mô tả" SortExpression="MoTa" >
                        <ItemStyle Width="300px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Gia" HeaderText="Giá" SortExpression="Gia" />
                        <asp:BoundField DataField="SoLuong" HeaderText="Số lượng" 
                            SortExpression="SoLuong" />
                        <asp:CheckBoxField DataField="TrangThai" HeaderText="Trạng thái" 
                            SortExpression="TrangThai" />
                        <asp:ImageField DataImageUrlField="Anh" DataImageUrlFormatString="~/Admin/Images/{0}" 
                            HeaderText="Ảnh">
                            <ControlStyle Height="150px" Width="150px" />
                        </asp:ImageField>
                        <asp:HyperLinkField DataNavigateUrlFields="MaSanPham" 
                            DataNavigateUrlFormatString="~/Admin/Page/SuaHang.aspx?MaSanPham={0}" Text="Sửa" />
                        <asp:CommandField CancelText="Hủy bỏ" DeleteText="Xóa" EditText="Sửa" 
                            InsertText="Thêm" NewText="Thêm" ShowDeleteButton="True" 
                            UpdateText="Cập nhật" />
                    </Columns>
                    <PagerSettings FirstPageImageUrl="~/Admin/Images/First.bmp" 
                        LastPageImageUrl="~/Admin/Images/Last.bmp" Mode="NextPreviousFirstLast" 
                        NextPageImageUrl="~/Admin/Images/Next.bmp" 
                        PreviousPageImageUrl="~/Admin/Images/Previous.bmp" />
                </asp:GridView>
                <asp:Button ID="Button1" runat="server" Text="Thêm mới" 
                    PostBackUrl="~/Admin/Page/ThemRuou.aspx" OnClick="Button1_Click" />
                <br />
                
            </td>
        </tr>
    </table>
</asp:Content>

