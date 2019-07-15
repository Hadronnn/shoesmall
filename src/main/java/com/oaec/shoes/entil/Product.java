package com.oaec.shoes.entil;

import java.util.Date;

public class Product {
    private Integer productId;
    private String productName;
    private Double price;
    private Integer stock;
    private Integer salesVolume;
    private Integer sortId;
    private Integer brandId;
    private String picAdress;
    private Integer state;
    private Date addTime;

    public Product(String productName, Double price, Integer stock, Integer salesVolume, Integer sortId, Integer brandId, String picAdress, Integer state, Date addTime) {
        this.productName = productName;
        this.price = price;
        this.stock = stock;
        this.salesVolume = salesVolume;
        this.sortId = sortId;
        this.brandId = brandId;
        this.picAdress = picAdress;
        this.state = state;
        this.addTime = addTime;
    }

    public Product() {
    }

    public Product(Integer productId, String productName, Double price, Integer stock, Integer salesVolume, Integer sortId, Integer brandId, String picAdress, Integer state, Date addTime) {
        this.productId = productId;
        this.productName = productName;
        this.price = price;
        this.stock = stock;
        this.salesVolume = salesVolume;
        this.sortId = sortId;
        this.brandId = brandId;
        this.picAdress = picAdress;
        this.state = state;
        this.addTime = addTime;
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

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Integer getStock() {
        return stock;
    }

    public void setStock(Integer stock) {
        this.stock = stock;
    }

    public Integer getSalesVolume() {
        return salesVolume;
    }

    public void setSalesVolume(Integer salesVolume) {
        this.salesVolume = salesVolume;
    }

    public Integer getSortId() {
        return sortId;
    }

    public void setSortId(Integer sortId) {
        this.sortId = sortId;
    }

    public Integer getBrandId() {
        return brandId;
    }

    public void setBrandId(Integer brandId) {
        this.brandId = brandId;
    }

    public String getPicAdress() {
        return picAdress;
    }

    public void setPicAdress(String picAdress) {
        this.picAdress = picAdress;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public Date getAddTime() {
        return addTime;
    }

    public void setAddTime(Date addTime) {
        this.addTime = addTime;
    }

    @Override
    public String toString() {
        return "Product{" +
                "productId=" + productId +
                ", productName='" + productName + '\'' +
                ", price=" + price +
                ", stock=" + stock +
                ", salesVolume=" + salesVolume +
                ", sortId=" + sortId +
                ", brandId=" + brandId +
                ", picAdress='" + picAdress + '\'' +
                ", state=" + state +
                ", addTime=" + addTime +
                '}';
    }
}
