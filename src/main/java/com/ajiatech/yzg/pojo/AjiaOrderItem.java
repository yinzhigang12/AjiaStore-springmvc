package com.ajiatech.yzg.pojo;

public class AjiaOrderItem {
    private String id;

    private String itemId;

    private String orderId;

    private Integer num;

    private String title;

    private Double price;

    private Double totalFee;

    private String picPath;

    public AjiaOrderItem() {
    }

    public AjiaOrderItem(String id, String itemId, String orderId, Integer num, String title, Double price, Double totalFee, String picPath) {
        this.id = id;
        this.itemId = itemId;
        this.orderId = orderId;
        this.num = num;
        this.title = title;
        this.price = price;
        this.totalFee = totalFee;
        this.picPath = picPath;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getItemId() {
        return itemId;
    }

    public void setItemId(String itemId) {
        this.itemId = itemId == null ? null : itemId.trim();
    }

    public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId == null ? null : orderId.trim();
    }

    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Double getTotalFee() {
        return totalFee;
    }

    public void setTotalFee(Double totalFee) {
        this.totalFee = totalFee;
    }

    public String getPicPath() {
        return picPath;
    }

    public void setPicPath(String picPath) {
        this.picPath = picPath == null ? null : picPath.trim();
    }
}