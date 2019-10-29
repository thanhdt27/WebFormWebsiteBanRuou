using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class DanhMucRuou : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblThongBaoHetSanPham.Text = "";
    }
    protected void dtlDanhSachRuou_ItemCommand(object source, DataListCommandEventArgs e)
    {
        int sd = e.Item.ItemIndex;

        if (e.CommandName == "XemChiTiet")
        {
            string ma = dtlDanhSachRuou.DataKeys[sd].ToString();
            Response.Redirect("ChiTietRuou.aspx?MaSanPham=" + ma);
        }

        if (e.CommandName == "ThemVaoGio")
        {
            string ma = dtlDanhSachRuou.DataKeys[sd].ToString();
            
            sqlRuou.SelectCommand = "Select * from SanPham where MaSanPham='" + ma + "'";
            DataView dv = (DataView)sqlRuou.Select(DataSourceSelectArguments.Empty);

            int soLuong = Int32.Parse(dv[0]["SoLuong"].ToString());

            if (soLuong == 0)
            {
                lblThongBaoHetSanPham.Text = "Sản phẩm tạm hết hàng. Xin mời chọn sản phẩm khác";
                return;
            }

            string ten = dv[0]["TenSanPham"].ToString();
            int gia = Int32.Parse(dv[0]["Gia"].ToString());
            ShoppingCart aCart;
            if (Session["Cart"] == null)
            {
                aCart = new ShoppingCart();
            }
            else
            {
                aCart = (ShoppingCart)Session["Cart"];
            }
            aCart.insertItem(ma, ten, gia, 1);
            Session["Cart"] = aCart;
            Response.Redirect("Giohang.aspx");
        }
        else
        {
            lblThongBaoHetSanPham.Text = "";
        }
    }
    protected void btnThemVaoGio_Click(object sender, EventArgs e)
    {

    }
}