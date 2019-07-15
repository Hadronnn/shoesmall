package com.oaec.shoes.entil;

public class OrderInfo {
    private Integer detailsId;
    private Integer orderId;
    private Integer productId;
    private String productName;
    private String picAdress;
    private Double price;
    private Integer num;

    public OrderInfo() {
    }

    public OrderInfo(Integer orderId, Integer productId, String productName, String picAdress, Double price, Integer num) {
        this.orderId = orderId;
        this.productId = productId;
        this.productName = productName;
        this.picAdress = picAdress;
        this.price = price;
        this.num = num;
    }

    public OrderInfo(Integer detailsId, Integer orderId, Integer productId, String productName, String picAdress, Double price, Integer num) {
        this.detailsId = detailsId;
        this.orderId = orderId;
        this.productId = productId;
        this.productName = productName;
        this.picAdress = picAdress;
        this.price = price;
        this.num = num;
    }

    public Integer getDetailsId() {
        return detailsId;
    }

    public void setDetailsId(Integer detailsId) {
        this.detailsId = detailsId;
    }

    public Integer getOrderId() {
        return orderId;
    }

    public void setOrderId(Integer orderId) {
        this.orderId = orderId;
    }

    public Integer getProductId() {
        return productId;
    }

    public void setProductId(Integer productId) {
        this.productId = productId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getPicAdress() {
        return picAdress;
    }

    public void setPicAdress(String picAdress) {
        this.picAdress = picAdress;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }
}
