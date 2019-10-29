using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Timkiem : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void LinkButton10_Click(object sender, EventArgs e)
    {
    
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int rowIndex = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "ThemVaoGio")
        {
            int soLuongCon = Convert.ToInt32(GridView1.Rows[rowIndex].Cells[5].Text);
            if (soLuongCon <= 0)
                return;

            string ma = GridView1.DataKeys[rowIndex].Value.ToString();
            string ten = GridView1.Rows[rowIndex].Cells[0].Text;
            int gia = Convert.ToInt32(GridView1.Rows[rowIndex].Cells[4].Text);

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

            Response.Redirect("GioHang.aspx");

        }
    }
}