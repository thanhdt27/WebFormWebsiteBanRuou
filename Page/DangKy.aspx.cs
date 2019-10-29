using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DangKy : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void LoaiTaiKhoanTextBox_TextChanged(object sender, EventArgs e)
    {

    }

    protected void FormView2_ItemInserted(object sender, FormViewInsertedEventArgs e)
    {
        lblThongBao.Text = "*Chúc mừng! Bạn vừa đăng ký tài khoản thành công*";
    }

    protected void FormView2_ItemInserting(object sender, FormViewInsertEventArgs e)
    {

    }
}