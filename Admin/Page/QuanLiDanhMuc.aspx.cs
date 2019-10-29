using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BTLMasterpageAdmin_QuanLiDanhMuc : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblThongBao.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (txtten.Text == "")
        {
            lblThongBao.Text = "Tên Danh Mục không được để trống";
            return;
        }
        sqldanhmuc.InsertParameters["TenDanhMuc"].DefaultValue = txtten.Text;
        sqldanhmuc.InsertParameters["MoTa"].DefaultValue = txtmota.Text;
        try
        {
            sqldanhmuc.Insert();
            txtten.Text = "";
            txtmota.Text = "";
            GridView1.DataBind();
            lblloi.Text = "";

        }
        catch (Exception ex)
        {
            lblloi.Text = "Một số xảy ra khi thêm dữ liệu. <br /><br />" + "Messenger: " + ex.Message;
        }
    }
    protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {
        if (e.Exception != null)
        {
            lblloi.Text = " Một số xảy ra khi thêm dữ liệu <br /><br />" + "Message: " + e.Exception.Message;
            e.ExceptionHandled = true;
        }
        else if (e.AffectedRows == 0)
        {
            lblloi.Text = "Mot nguoi dung khac co the dang cap nhat du lieu " + "<br /> Co gang thu lai. ";
        }
    }
    protected void GridView1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
    {
        if (e.Exception != null)
        {
            lblloi.Text = " Một số xảy ra khi thêm dữ liệu <br /><br />" + "Message: " + e.Exception.Message;
            e.ExceptionHandled = true;
        }
        else if (e.AffectedRows == 0)
        {
            lblloi.Text = "Mot nguoi dung khac co the dang cap nhat du lieu " + "<br /> Co gang thu lai. ";
        }
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        lblloi.Text = "";
    }
}