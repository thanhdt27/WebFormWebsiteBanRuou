<%@ Page Title="" Language="C#" MasterPageFile="MasterPageClient.master" AutoEventWireup="true" CodeFile="Timkiem.aspx.cs" Inherits="Timkiem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style30 {
        width: 108px;
    }
        .auto-style31 {
            width: 180px;
        }
    .auto-style32 {
        width: 100%;
        height: 105px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style32">
    <tr>
        <td class="auto-style30">
            &nbsp;</td>
        <td class="auto-style31">
            <strong>KẾT QUẢ TÌM KIẾM</strong></td>
        <td>
            &nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style30">&nbsp;</td>
        <td class="auto-style31">
            <asp:SqlDataSource ID="sqlDsTimKiem" runat="server" ConnectionString="<%$ ConnectionStrings:Nhom6WFConnectionString %>" SelectCommand="SELECT * FROM [SanPham] WHERE ([Gia] = @Gia)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="Gia" QueryStringField="gia" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <asp:Label ID="lblThongBao" runat="server"></asp:Label>
        </td>
        <td>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="10" DataKeyNames="MaSanPham" DataSourceID="sqlDsTimKiem" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" PageSize="3" Width="150px" OnRowCommand="GridView1_RowCommand">
                <Columns>
                    <asp:BoundField DataField="TenSanPham" HeaderText="Tên Sản Phẩm" SortExpression="TenSanPham">
                    <ControlStyle BorderWidth="200px" Height="250px" Width="200px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="XuatXu" HeaderText="Xuất Xứ" SortExpression="XuatXu">
                    <ControlStyle BorderWidth="200px" Width="200px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="NongDo" HeaderText="Nồng Độ" SortExpression="NongDo" />
                    <asp:BoundField DataField="TheTich" HeaderText="Thể Tích" SortExpression="TheTich" />
                    <asp:BoundField DataField="Gia" HeaderText="Giá" SortExpression="Gia" />
                    <asp:BoundField DataField="SoLuong" HeaderText="Số Lượng" SortExpression="SoLuong" />
                    <asp:ImageField DataImageUrlField="Anh" DataImageUrlFormatString="~/image/{0}" HeaderText="Ảnh">
                        <ControlStyle Height="170px" Width="170px" />
                    </asp:ImageField>
                    <asp:ButtonField ButtonType="Button" CommandName="ThemVaoGio" Text="Thêm vào giỏ" />
                </Columns>
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#330099" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                <SortedDescendingHeaderStyle BackColor="#7E0000" />
            </asp:GridView>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style30">&nbsp;</td>
        <td class="auto-style31">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    </table>
</asp:Content>

