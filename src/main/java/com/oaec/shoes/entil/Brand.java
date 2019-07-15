package com.oaec.shoes.entil;

import java.util.Date;

public class Brand {
    private Integer brandId;
    private String brandName;
    private Integer state;
    private Date addTime;

    public Brand() {
    }

    public Brand(String brandName, Integer state, Date addTime) {
        this.brandName = brandName;
        this.state = state;
        this.addTime = addTime;
    }

    public Brand(Integer brandId, String brandName, Integer state, Date addTime) {
        this.brandId = brandId;
        this.brandName = brandName;
        this.state = state;
        this.addTime = addTime;
    }

    public void setBrandId(Integer brandId) {
        this.brandId = brandId;
    }

    public void setBrandName(String brandName) {
        this.brandName = brandName;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public void setAddTime(Date addTime) {
        this.addTime = addTime;
    }

    public Integer getBrandId() {
        return brandId;
    }

    public String getBrandName() {
        return brandName;
    }

    public Integer getState() {
        return state;
    }

    public Date getAddTime() {
        return addTime;
    }
}
