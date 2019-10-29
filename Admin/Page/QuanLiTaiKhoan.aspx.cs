using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BTLMasterpageAdmin_QuanLiTaiKhoan : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void FormView1_ItemInserted(object sender, FormViewInsertedEventArgs e)
    {
        if (e.Exception != null)
        {
            lblThongBao.Text = "Đã xảy ra lỗi " + e.Exception.Message;
            e.ExceptionHandled = true;
            e.KeepInInsertMode = true;
        }
        else if (e.AffectedRows == 0)
        {
            lblThongBao.Text = "Một ai đó đang thao tác ";
        }
        else
            FormView1.DataBind();
    }
    protected void FormView1_ItemUpdated(object sender, FormViewUpdatedEventArgs e)
    {
        if (e.Exception != null)
        {
            lblThongBao.Text = "Đã xảy ra lỗi " + e.Exception.Message;
            e.ExceptionHandled = true;
            e.KeepInEditMode = true;
        }
        else if (e.AffectedRows == 0)
        {
            lblThongBao.Text = "Một ai đó đang thao tác ";
        }
        else
            FormView1.DataBind();
    }
    protected void FormView1_ItemDeleted(object sender, FormViewDeletedEventArgs e)
    {
        if (e.Exception != null)
        {
            lblThongBao.Text = "Đã xảy ra lỗi " + e.Exception.Message;
            e.ExceptionHandled = true;
        }
        else if (e.AffectedRows == 0)
        {
            lblThongBao.Text = "Một ai đó đang thao tác ";
        }
        else
            FormView1.DataBind();
    }
}