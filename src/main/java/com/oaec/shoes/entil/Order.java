package com.oaec.shoes.entil;

import java.util.Date;

public class Order {
    private Integer orderId;
    private Integer userId;
    private Integer adressId;
    private Date createTime;
    private Integer state;

    public Order() {
    }

    public Order(Integer orderId, Integer userId, Integer adressId, Date createTime, Integer state) {
        this.orderId = orderId;
        this.userId = userId;
        this.adressId = adressId;
        this.createTime = createTime;
        this.state = state;
    }

    public Order(Integer userId, Integer adressId, Date createTime, Integer state) {
        this.userId = userId;
        this.adressId = adressId;
        this.createTime = createTime;
        this.state = state;
    }

    public Integer getOrderId() {
        return orderId;
    }

    public void setOrderId(Integer orderId) {
        this.orderId = orderId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getAdressId() {
        return adressId;
    }

    public void setAdressId(Integer adressId) {
        this.adressId = adressId;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }
}
