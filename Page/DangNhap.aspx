<%@ Page Title="" Language="C#" MasterPageFile="~/Page/MasterPageClient.master" AutoEventWireup="true" CodeFile="DangNhap.aspx.cs" Inherits="DangNhap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style30 {
        width: 289px;
    }
    .auto-style31 {
        margin-left: 73px;
    }
    .auto-style32 {
        height: 37px;
    }
        .auto-style33 {
            margin-left: 145px;
        }
        .auto-style35 {
            font-weight: bold;
            color: #800000;
        }
        .auto-style34 {
            font-weight: bold;
            color: #800080;
            text-decoration: none;
        }
        .auto-style36 {
            width: 106%;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style16">
    <tr>
        <td class="auto-style30">&nbsp;</td>
        <td>
            <asp:Panel ID="Panel3" runat="server" BorderStyle="Outset" Height="340px" BorderWidth="2px" Width="500px" CssClass="auto-style33">
                <table class="auto-style36">
                    <tr>
                        <td>
                            <asp:SqlDataSource ID="sqlDsTaiKhoanAdmin" runat="server" ConnectionString="<%$ ConnectionStrings:Nhom6WFConnectionString2 %>" SelectCommand="SELECT [TenTaiKhoan], [MatKhau] FROM [TaiKhoan] WHERE (([TenTaiKhoan] = @TenTaiKhoan) AND ([MatKhau] = @MatKhau) AND ([LoaiTaiKhoan] = @LoaiTaiKhoan) AND ([TinhTrang] &lt;&gt; @TinhTrang))">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="txtTenDN" Name="TenTaiKhoan" PropertyName="Text" Type="String" />
                                    <asp:ControlParameter ControlID="txtMatKhau" Name="MatKhau" PropertyName="Text" Type="String" />
                                    <asp:Parameter DefaultValue="Admin" Name="LoaiTaiKhoan" Type="String" />
                                    <asp:Parameter DefaultValue="Block" Name="TinhTrang" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:SqlDataSource ID="sqlDsDangNhapUser" runat="server" ConnectionString="<%$ ConnectionStrings:Nhom6WFConnectionString2 %>" SelectCommand="SELECT * FROM [TaiKhoan] WHERE (([TenTaiKhoan] = @TenTaiKhoan) AND ([MatKhau] = @MatKhau) AND ([TinhTrang] &lt;&gt; @TinhTrang))">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="txtTenDN" Name="TenTaiKhoan" PropertyName="Text" Type="String" />
                                    <asp:ControlParameter ControlID="txtMatKhau" Name="MatKhau" PropertyName="Text" Type="String" />
                                    <asp:Parameter DefaultValue="Block" Name="TinhTrang" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center" class="auto-style17">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            <asp:Label ID="Label11" runat="server" CssClass="auto-style35" Font-Names=".VnArial" Text="ĐĂNG NHẬP"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style32">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="txtTenDN" runat="server" Height="20px" Width="216px" OnTextChanged="txtTenDN_TextChanged" style="text-align: left"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTenDN" Display="Dynamic" ErrorMessage=" *Nhập tài khoản" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="txtMatKhau" runat="server" Height="20px" Width="216px" TextMode="Password"></asp:TextBox>
                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtMatKhau" ErrorMessage="*Nhập mật khẩu" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp; &nbsp;&nbsp;&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style17">&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnDangNhapAdmin" runat="server" BackColor="#990033" BorderColor="Red" Font-Bold="True" ForeColor="White"  Text="Đăng Nhập Admin" Width="171px" Height="34px" OnClick="btnDangNhapAdmin_Click" />
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnDangNhapUsers" runat="server" BackColor="#990033" BorderColor="Red" CssClass="auto-style31" Font-Bold="True" ForeColor="White" Text="Đăng Nhập User" Width="171px" Height="34px" OnClick="btnDangNhapUsers_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:LinkButton ID="LinkButton10" runat="server" CssClass="auto-style34" OnClick="LinkButton10_Click" PostBackUrl="~/Page/DangKy.aspx" CausesValidation="False">Đăng ký</asp:LinkButton>
                            &nbsp;</td>
                    </tr>
                </table>
            </asp:Panel>
        </td>
    </tr>
    <tr>
        <td class="auto-style30">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

