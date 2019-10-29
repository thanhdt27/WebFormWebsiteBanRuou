using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DatMua : System.Web.UI.Page
{
    string madonhang;
    protected void Page_Load(object sender, EventArgs e)
    {
        lblThongBao2.Text = "";
        btnYes.Visible = false;
        User u;
        if (Session["User"] == null)
        {
            u = new User();
            lblThongBao2.Text = "Chưa đăng nhập tài khoản.Bạn có muốn đăng nhập không";
            btnYes.Visible = true;
        }
        else
        {
            u = (User)Session["User"];
        }
        lblTenDangNhap.Text = u.TenDangNhap;

        ShoppingCart aCart;
        if (Session["Cart"] == null)
        {
            aCart = new ShoppingCart();
        }
        else
        {
            aCart = (ShoppingCart)Session["Cart"];
        }
        if (!IsPostBack)
        {
            BindGrid(aCart);
        }

        ddlNganHang.Enabled = false;
        txtMaThe.Enabled = false;
        chbThanhToanKhiNhanHang.Enabled = true;
        if (!IsPostBack)
        {
            chbThanhToanKhiNhanHang.Checked = true;
        }
        lblThongBao.Text = "";
        lblNgay.Text = DateTime.Now.ToShortDateString();
    }

    public void BindGrid(ShoppingCart aCart)
    {
        gvDanhSachDatHang.DataSource = aCart.Items;
        gvDanhSachDatHang.DataBind();
        int tongtien = Int32.Parse(aCart.TongTien.ToString());
        lblTongTien.Text = "Tổng tiền: " + tongtien;
    }

    protected void chbThanhToanKhiNhanHang_CheckedChanged(object sender, EventArgs e)
    {
        if (chbThanhToanKhiNhanHang.Checked)
        {
            ddlNganHang.Enabled = false;
            txtMaThe.Enabled = false;
            lblPhiVanChuyen.Text = "15000";
            reqMaThe.Enabled = false;
            regMaThe.Enabled = false;
        }
        else
        {
            ddlNganHang.Enabled = true;
            txtMaThe.Enabled = true;
            lblPhiVanChuyen.Text = "0";
            reqMaThe.Enabled = true;
            regMaThe.Enabled = true;
        }
    }
    protected void ddlNganHang_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void btnDatMua_Click(object sender, EventArgs e)
    {
        ShoppingCart aCart;
        if (Session["Cart"] != null)
        {
            aCart = (ShoppingCart)Session["Cart"];
            sqlHoaDon.InsertParameters["NgayLap"].DefaultValue = DateTime.Now.ToShortDateString();
            sqlHoaDon.InsertParameters["TenKhachHang"].DefaultValue = txtTenNguoiNhan.Text;
            sqlHoaDon.InsertParameters["SoDienThoai"].DefaultValue = txtDienThoai.Text;
            sqlHoaDon.InsertParameters["DiaChiKhachHang"].DefaultValue = txtDiaChi.Text;
            sqlHoaDon.InsertParameters["Email"].DefaultValue = txtEmail.Text;
            sqlHoaDon.InsertParameters["TongTien"].DefaultValue = aCart.TongTien.ToString();
            sqlHoaDon.InsertParameters["TenTaiKhoan"].DefaultValue = lblTenDangNhap.Text;
            sqlHoaDon.InsertParameters["PhiVanChuyen"].DefaultValue = "15000";
            try
            {
                sqlHoaDon.Insert();

                foreach (var ele in aCart.Items)
                {
                    sqlChiTietHoaDon.InsertParameters["MaHoaDon"].DefaultValue = madonhang;
                    sqlChiTietHoaDon.InsertParameters["MaSanPham"].DefaultValue = ele.maHang;
                    sqlChiTietHoaDon.InsertParameters["SoLuong"].DefaultValue = ele.soLuong.ToString();
                    sqlChiTietHoaDon.Insert();
                    sqlCapNhatSanPham.UpdateCommand = "update SanPham set SoLuong=SoLuong-" + ele.soLuong.ToString() + " where MaSanPham='" + ele.maHang + "'";
                    sqlCapNhatSanPham.Update();
                }

                Session.Remove("Cart");
                Response.Redirect("ThongTinDonHang.aspx?MaHoaDon=" + madonhang);
            }
            catch (Exception ex)
            {
                lblThongBao.Text = "Mua hàng thất bại " + ex.Message;
            }
        }
        
    }
    protected void sqlHoaDon_Inserted(object sender, SqlDataSourceStatusEventArgs e)
    {
        madonhang = e.Command.Parameters["@madonhang"].Value.ToString();
    }
    protected void btnHuyBo_Click(object sender, EventArgs e)
    {
        Session.Remove("Cart");
        Response.Redirect("DanhMucRuou.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("DangNhap.aspx");
    }
}