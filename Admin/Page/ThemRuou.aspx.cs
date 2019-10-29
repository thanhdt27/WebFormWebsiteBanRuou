using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Page_ThemRuou : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblthongbao.Text = "";
    }
    protected void XuatXuTextBox_TextChanged(object sender, EventArgs e)
    {

    }
    protected void InsertButton_Click(object sender, EventArgs e)
    {
        lblthongbao.Text = "Thêm hàng thành công!";
    }
    protected void FormView1_ItemInserted(object sender, FormViewInsertedEventArgs e)
    {
        if (e.Exception != null)
        {
            lblthongbao.Text = " Một số xảy ra khi thêm dữ liệu <br /><br />" + "Message: " + e.Exception.Message;
            e.ExceptionHandled = true;
        }
        else if (e.AffectedRows == 0)
        {
            lblthongbao.Text = "Mot nguoi dung khac co the dang cap nhat du lieu " + "<br /> Co gang thu lai. ";
        }
    }
}