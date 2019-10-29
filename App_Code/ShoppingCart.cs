using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ShoppingCart
/// </summary>
public class ShoppingCart
{
    public List<CartItem> Items { get; set; }
    private int tongTien;

    public decimal TongTien
    {
        get
        {
            tongTien = 0;
            if (Items != null)
            {
                foreach (CartItem ele in Items)
                {
                    tongTien += ele.ThanhTien;
                }
            }
            return tongTien;
        }
    }
    public ShoppingCart()
    {
        if (Items == null)
            this.Items = new List<CartItem>();
    }

    public int getIndex(string ma)
    {
        int index = 0;
        foreach (CartItem ele in Items)
        {
            if (ele.maHang == ma)
                return index;
            index++;
        }

        return -1;
    }

    public void insertItem(string ma, string ten, int gia, int soLuong)
    {
        int index = this.getIndex(ma);
        if (index == -1)
        {
            CartItem anItem = new CartItem(ma, ten, gia, soLuong);
            Items.Add(anItem);
        }
        else
        {
            Items[index].soLuong += soLuong;
        }
    }

    public void deleteItem(int rowID)
    {
        Items.RemoveAt(rowID);
    }

    public void updateItem(int rowID, int soLuong)
    {
        if (soLuong == 0)
            this.deleteItem(rowID);
        else
        {
            CartItem updateItem = Items[rowID];
            updateItem.soLuong = soLuong;
        }
    }
}