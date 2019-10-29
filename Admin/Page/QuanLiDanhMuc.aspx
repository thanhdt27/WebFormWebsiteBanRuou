<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/BTLMasterpageAdmin/MasterPageAdmin.master"  AutoEventWireup="true" CodeFile="QuanLiDanhMuc.aspx.cs" Inherits="BTLMasterpageAdmin_QuanLiDanhMuc" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <table class="auto-style16">
            <tr>
                <td style="width: 324px">
                    <asp:SqlDataSource ID="sqldanhmuc" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:Nhom6WFConnectionString %>" 
                        DeleteCommand="DELETE FROM [DanhMuc] WHERE [MaDanhMuc] = @MaDanhMuc" 
                        InsertCommand="INSERT INTO [DanhMuc] ([TenDanhMuc], [MoTa]) VALUES (@TenDanhMuc, @MoTa)" 
                        SelectCommand="SELECT * FROM [DanhMuc]" 
                        UpdateCommand="UPDATE [DanhMuc] SET [TenDanhMuc] = @TenDanhMuc, [MoTa] = @MoTa WHERE [MaDanhMuc] = @MaDanhMuc">
                        <DeleteParameters>
                            <asp:Parameter Name="MaDanhMuc" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="TenDanhMuc" Type="String" />
                            <asp:Parameter Name="MoTa" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="TenDanhMuc" Type="String" />
                            <asp:Parameter Name="MoTa" Type="String" />
                            <asp:Parameter Name="MaDanhMuc" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
                <td>
                    <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="X-Large" 
                        Text="Quản Lí Danh Mục"></asp:Label>
                    <br />
                    <br />
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                        AutoGenerateColumns="False" CellPadding="4" DataKeyNames="MaDanhMuc" 
                        DataSourceID="sqldanhmuc" ForeColor="#333333" GridLines="None" 
                        BorderStyle="Solid" BorderWidth="1px" onrowcommand="GridView1_RowCommand" 
                        onrowdeleted="GridView1_RowDeleted" onrowupdated="GridView1_RowUpdated" 
                        Width="700px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:TemplateField HeaderText="Mã danh mục">
                                <EditItemTemplate>
                                    <asp:Label ID="lblMaDanhMuc" runat="server" Text='<%# Bind("MaDanhMuc") %>'></asp:Label>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblItemMaDanhMuc" runat="server" Text='<%# Bind("MaDanhMuc") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Tên danh mục">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtEditTenDanhMuc" runat="server" 
                                        Text='<%# Bind("TenDanhMuc") %>'></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                        ControlToValidate="txtEditTenDanhMuc" ErrorMessage="RequiredFieldValidator" 
                                        ForeColor="Red" ValidationGroup="2">(*)</asp:RequiredFieldValidator>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="lblTenDanhMuc" runat="server" Text='<%# Bind("TenDanhMuc") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="MoTa" HeaderText="Mô tả" SortExpression="MoTa" />
                            <asp:CommandField ButtonType="Button" CancelText="Hủy bỏ" DeleteText="Xóa" 
                                EditText="Sửa" InsertText="Thêm mới" NewText="Thêm mới" ShowDeleteButton="True" 
                                ShowEditButton="True" UpdateText="Cập nhật" />
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerSettings FirstPageImageUrl="~/Admin/Images/First.bmp" 
                            LastPageImageUrl="~/Admin/Images/Last.bmp" Mode="NextPreviousFirstLast" 
                            NextPageImageUrl="~/Admin/Images/Next.bmp" 
                            PreviousPageImageUrl="~/Admin/Images/Previous.bmp" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <table class="auto-style16">
                        <tr>
                            <td style="margin-left: 80px">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <br />
                                <br />
&nbsp;<asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Times New Roman" 
                                    Font-Size="Large" ForeColor="Black" Text="Thêm danh mục"></asp:Label>
                                <br />
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label13" runat="server" Font-Bold="True" 
                                    Font-Size="Medium" Text="Tên danh mục" Width="170px"></asp:Label>
                                <asp:TextBox ID="txtten" runat="server" ValidationGroup="1"></asp:TextBox>
                                <asp:Label ID="lblThongBao" runat="server" ForeColor="Red"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Size="Medium" 
                                    Text="Mô tả" Width="170px"></asp:Label>
                                <asp:TextBox ID="txtmota" runat="server" TextMode="MultiLine"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button1" runat="server" Font-Bold="True" 
                                    Font-Names="Times New Roman" Font-Size="Medium" onclick="Button1_Click" 
                                    Text="Thêm" />
                                <br />
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblloi" runat="server" ForeColor="Red"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td style="width: 324px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 324px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <br />
    </p>
</asp:Content>

