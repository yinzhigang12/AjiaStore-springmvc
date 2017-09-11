package com.ajiatech.yzg.pojo;

import java.util.List;

public class OrderVo {
    private AjiaOrder order;
    private List<OrderItemVo> itemVos;

    public OrderVo() {
    }

    public OrderVo(AjiaOrder order, List<OrderItemVo> itemVos) {
        this.order = order;
        this.itemVos = itemVos;
    }

    public AjiaOrder getOrder() {
        return order;
    }

    public void setOrder(AjiaOrder order) {
        this.order = order;
    }

    public List<OrderItemVo> getItemVos() {
        return itemVos;
    }

    public void setItemVos(List<OrderItemVo> itemVos) {
        this.itemVos = itemVos;
    }
}
