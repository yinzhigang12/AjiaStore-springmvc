package com.ajiatech.yzg.pojo;

import java.util.List;

public class OrderItemVo {
    private AjiaOrderItem item;
    private List<Params> params;

    public OrderItemVo() {
    }

    public OrderItemVo(AjiaOrderItem item, List<Params> params) {
        this.item = item;
        this.params = params;
    }

    public AjiaOrderItem getItem() {
        return item;
    }

    public void setItem(AjiaOrderItem item) {
        this.item = item;
    }

    public List<Params> getParams() {
        return params;
    }

    public void setParams(List<Params> params) {
        this.params = params;
    }
}
