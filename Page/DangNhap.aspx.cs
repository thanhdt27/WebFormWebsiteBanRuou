using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class DangNhap : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtTenDN.Attributes.Add("placeholder", "Tên Đăng Nhập");
        txtMatKhau.Attributes.Add("placeholder", "Mật Khẩu");
    }

    protected void LinkButton10_Click(object sender, EventArgs e)
    {

    }

    protected void txtTenDN_TextChanged(object sender, EventArgs e)
    {

    }


    protected void btnDangNhapAdmin_Click(object sender, EventArgs e)
    {
        DataView dv = (DataView)sqlDsTaiKhoanAdmin.Select(DataSourceSelectArguments.Empty);
        int num = dv.Count;
        if (num > 0)
        {
            Admin objAdmin = new Admin();
            objAdmin.TenDangNhap = txtTenDN.Text;
            string session = objAdmin.TenDangNhap;
            objAdmin.MatKhau = txtMatKhau.Text;
            Session.Add("Admin",objAdmin);
            Response.Redirect("~/Admin/Page/Default.aspx");
            
        }
        else
        {
            Response.Redirect("Error.aspx");
        }
    }

    protected void btnDangNhapUsers_Click(object sender, EventArgs e)
    {
        DataView dv = (DataView)sqlDsDangNhapUser.Select(DataSourceSelectArguments.Empty);
        int num = dv.Count;
        if (num > 0)
        {
           
            User objUser = new User();
            objUser.TenDangNhap = txtTenDN.Text;
            objUser.MatKhau = txtMatKhau.Text;
            string session = objUser.TenDangNhap;
            Session.Add("User", objUser);
            Response.Redirect("~/Page/DangNhapUser.aspx?TenDangNhap="+session);
            
        }
        else
        {
            Response.Redirect("Error.aspx");
        }
    }
}