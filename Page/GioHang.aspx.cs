using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class GioHang : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
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
        lblThongBao.Text = "";
    }
    public void BindGrid(ShoppingCart aCart)
    {
        gvGioHang.DataSource = aCart.Items;
        gvGioHang.DataBind();
        lblTongTien.Text = "Tổng tiền " + aCart.TongTien.ToString();
    }
    protected void gvGioHang_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int rowIndex = Convert.ToInt32(e.CommandArgument);

        string ma = gvGioHang.Rows[rowIndex].Cells[0].Text;
        int soLuong = 0;
        TextBox txtSoLuong = (TextBox)gvGioHang.Rows[rowIndex].FindControl("txtSoLuong");
        try
        {
            soLuong = Convert.ToInt32(txtSoLuong.Text);
        }
        catch (Exception ex)
        {
            lblThongBao.Text = ex.Message;
            return;
        }
        if (soLuong < 0)
        {
            lblThongBao.Text = "Số lượng phải lớn hơn 0";
            return;
        }

        
        sqlRuou.SelectCommand = "Select * from SanPham where MaSanPham='" + ma + "'";
        DataView dv = (DataView)sqlRuou.Select(DataSourceSelectArguments.Empty);
        int soLuongCon = Int32.Parse(dv[0]["SoLuong"].ToString());

        if (soLuong > soLuongCon)
        {
            lblThongBao.Text = "Không đủ sản phẩm. Tối đa chỉ có "+soLuongCon+" sản phẩm.";
            return;
        }

        ShoppingCart aCart;
        if (Session["Cart"] == null)
        {
            aCart = new ShoppingCart();
        }
        else
        {
            aCart = (ShoppingCart)Session["Cart"];
        }

        int rowID = aCart.getIndex(ma);
        aCart.updateItem(rowID, soLuong);

        BindGrid(aCart);

        Session["Cart"] = aCart;
    }
    protected void btnTiepTucMuaHang_Click(object sender, EventArgs e)
    {
        Response.Redirect("DanhMucRuou.aspx");
    }
    protected void btnXoaGioHang_Click(object sender, EventArgs e)
    {
        Session.Remove("Cart");
        lblTongTien.Text = "";
        Response.Redirect("DanhMucRuou.aspx");
    }
    protected void btnThanhToan_Click(object sender, EventArgs e)
    {
        if (Session["Cart"] == null)
        {
            lblThongBao.Text = "Giỏ hàng rỗng không thể thanh toán được.";
            return;
        }
        else 
        Response.Redirect("DatMua.aspx");
    }
    protected void gvGioHang_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}