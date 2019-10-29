<%@ Page Title="" Language="C#" MasterPageFile="~/Page/MasterPageClient.master" AutoEventWireup="true" CodeFile="ChiTietRuou.aspx.cs" Inherits="ChiTietRuou" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style34 {
            width: 73px;
        }
        .auto-style42 {
            width: 127px;
        }
        .auto-style43 {
            height: 23px;
            width: 127px;
        }
        .auto-style44 {
            width: 54px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style16">
        <tr>
            <td>&nbsp;</td>
            <td><h2>Chi tiết rượu</h2></td>
        </tr>
        </table>
    
    <p>
        <asp:SqlDataSource ID="sqlChiTietRuou" runat="server" ConnectionString="<%$ ConnectionStrings:Nhom6WFConnectionString2 %>" SelectCommand="SELECT * FROM [SanPham] WHERE ([MaSanPham] = @MaSanPham)">
            <SelectParameters>
                <asp:QueryStringParameter Name="MaSanPham" QueryStringField="MaSanPham" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <table class="auto-style16">
            <tr>
                <td class="auto-style44">&nbsp;</td>
                <td>
                    <asp:FormView ID="FormView1" runat="server" DataKeyNames="MaSanPham" DataSourceID="sqlChiTietRuou" Width="490px" CellPadding="4" ForeColor="#333333">
                        <EditItemTemplate>
                            MaSanPham:
                            <asp:Label ID="MaSanPhamLabel1" runat="server" Text='<%# Eval("MaSanPham") %>' />
                            <br />
                            MaDanhMuc:
                            <asp:TextBox ID="MaDanhMucTextBox" runat="server" Text='<%# Bind("MaDanhMuc") %>' />
                            <br />
                            TenSanPham:
                            <asp:TextBox ID="TenSanPhamTextBox" runat="server" Text='<%# Bind("TenSanPham") %>' />
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
                            <asp:CheckBox ID="TrangThaiCheckBox" runat="server" Checked='<%# Bind("TrangThai") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <InsertItemTemplate>
                            MaDanhMuc:
                            <asp:TextBox ID="MaDanhMucTextBox" runat="server" Text='<%# Bind("MaDanhMuc") %>' />
                            <br />
                            TenSanPham:
                            <asp:TextBox ID="TenSanPhamTextBox" runat="server" Text='<%# Bind("TenSanPham") %>' />
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
                            <asp:CheckBox ID="TrangThaiCheckBox" runat="server" Checked='<%# Bind("TrangThai") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <table class="auto-style16" style="width: 100%">
                                <tr>
                                    <td class="auto-style34" rowspan="7">
                                        <asp:Image ID="Image1" runat="server" Height="350px" ImageUrl='<%# Eval("Anh", "~/image/{0}") %>' Width="300px" />
                                    </td>
                                    <td class="auto-style42">
                                        <asp:Label ID="Label10" runat="server" Font-Bold="True" Text="Tên rượu" Width="100px"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="TenSanPhamLabel" runat="server" Text='<%# Bind("TenSanPham") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style42">
                                        <asp:Label ID="Label11" runat="server" Font-Bold="True" Text="Mô tả" Width="100px"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox2" runat="server" Height="100px" Text='<%# Bind("MoTa") %>' TextMode="MultiLine" Width="250px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style43">
                                        <asp:Label ID="Label12" runat="server" Font-Bold="True" Text="Xuất xứ" Width="100px"></asp:Label>
                                    </td>
                                    <td class="auto-style17">
                                        <asp:Label ID="XuatXuLabel" runat="server" Text='<%# Bind("XuatXu") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style42">
                                        <asp:Label ID="Label13" runat="server" Font-Bold="True" Text="Nồng độ" Width="100px"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="NongDoLabel" runat="server" Text='<%# Bind("NongDo") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style42">
                                        <asp:Label ID="Label14" runat="server" Font-Bold="True" Text="Thể tích" Width="100px"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="TheTichLabel" runat="server" Text='<%# Bind("TheTich") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style42">
                                        <asp:Label ID="Label15" runat="server" Font-Bold="True" Text="Giá" Width="100px"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="GiaLabel" runat="server" Text='<%# Bind("Gia") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style42">
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                            </table>
                        </ItemTemplate>
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                    </asp:FormView>
                </td>
            </tr>
        </table>

    </p>
<p style="margin-left: 360px">
        <asp:Button ID="btnThemVaoGio" runat="server" OnClick="btnDatMua_Click" Text="Thêm vào giỏ" />

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnTiepTucMua" runat="server" OnClick="btnTiepTucMua_Click" Text="Tiếp tục mua hàng" />

    </p>
</asp:Content>

