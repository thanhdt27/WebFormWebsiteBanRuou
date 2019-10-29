using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BTLMasterpageAdmin_QuanLiHang : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblloi.Text = "";
    }
    protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {
        if (e.Exception != null)
        {
            lblloi.Text = " Mot loi xay ra khi xoa du lieu <br /><br />" + "Message: " + e.Exception.Message;
            e.ExceptionHandled = true;
        }
        else if (e.AffectedRows == 0)
        {
            lblloi.Text = "Mot nguoi dung khac co the dang cap nhat du lieu " + "<br /> Co gang thu lai. ";
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}