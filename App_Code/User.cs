using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for User
/// </summary>
public class User
{
    private string tenDangNhap;

    public string TenDangNhap
    {
        get { return tenDangNhap; }
        set { tenDangNhap = value; }
    }
    private string matKhau;

    public string MatKhau
    {
        get { return matKhau; }
        set { matKhau = value; }
    }
    private string loaitaikhoan;

    public string Loaitaikhoan
    {
        get { return loaitaikhoan; }
        set { loaitaikhoan = value; }
    }
    

    public User()
    {
        //
        // TODO: Add constructor logic here
        //
    }
}