package com.ajiatech.yzg.pojo;

import java.util.List;

public class CartItemVo {
    private AjiaCartItem cartItem;
    private AjiaItem item;
    private List<Params> params;

    public CartItemVo() {
    }

    public CartItemVo(AjiaCartItem cartItem, AjiaItem item, List<Params> params) {
        this.cartItem = cartItem;
        this.item = item;
        this.params = params;
    }

    public AjiaCartItem getCartItem() {
        return cartItem;
    }

    public void setCartItem(AjiaCartItem cartItem) {
        this.cartItem = cartItem;
    }

    public AjiaItem getItem() {
        return item;
    }

    public void setItem(AjiaItem item) {
        this.item = item;
    }

    public List<Params> getParams() {
        return params;
    }

    public void setParams(List<Params> params) {
        this.params = params;
    }
}
