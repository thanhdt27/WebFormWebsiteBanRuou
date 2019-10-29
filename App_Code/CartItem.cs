using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for CartItem
/// </summary>
public class CartItem
{
    public string maHang { get; set; }
    public string tenHang { get; set; }
    public int gia { get; set; }
    public int soLuong { get; set; }
    private int thanhTien;

    public int ThanhTien
    {
        get { return gia * soLuong; }
        set { thanhTien = value; }
    }

    public CartItem()
    {

    }
    public CartItem(string ma, string ten, int gia, int soLuong)
    {
        this.maHang = ma;
        this.tenHang = ten;
        this.gia = gia;
        this.soLuong = soLuong;
    }
}