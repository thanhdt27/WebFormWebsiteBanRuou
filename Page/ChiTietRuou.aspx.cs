using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class ChiTietRuou : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
    {

    }
    protected void btnDatMua_Click(object sender, EventArgs e)
    {
        string ma = Request.QueryString["MaSanPham"].ToString();

        SqlDataSource sqlRuou = new SqlDataSource();
        sqlRuou.ConnectionString = @"Data Source=DESKTOP-PGUCCN0\SQLEXPRESS;Initial Catalog=Nhom6WF;Integrated Security=True";
        sqlRuou.SelectCommand = "Select * from SanPham where MaSanPham='" + ma + "'";

        DataView dv = (DataView)sqlRuou.Select(DataSourceSelectArguments.Empty);

        int soLuong = Int32.Parse(dv[0]["SoLuong"].ToString());

        if (soLuong == 0)
            return;

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
    protected void btnTiepTucMua_Click(object sender, EventArgs e)
    {
        Response.Redirect("DanhMucRuou.aspx");
    }
}