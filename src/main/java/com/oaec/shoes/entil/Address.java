package com.oaec.shoes.entil;

import java.util.Date;

public class Address {
    private Integer addressId;
    private String province;
    private String city;
    private String county;
    private Integer code;
    private String name;
    private String contact;
    private String address;
    private Integer userId;
    private Boolean isDefault;
    private Integer state;
    private Date addTime;

    public Address(String province, String city,Integer code, String county, String name, String contact, String address, Integer userId) {
        this.province = province;
        this.code = code;
        this.city = city;
        this.county = county;
        this.name = name;
        this.contact = contact;
        this.address = address;
        this.userId = userId;
    }

    public Address(Integer addressId, String province, String city, String county, Integer code, String name, String contact, String address, Integer userId, Boolean isDefault, Integer state, Date addTime) {
        this.addressId = addressId;
        this.province = province;
        this.county = county;
        this.city = city;
        this.code = code;
        this.name = name;
        this.contact = contact;
        this.address = address;
        this.userId = userId;
        this.isDefault = isDefault;
        this.state = state;
        this.addTime = addTime;
    }

    public Address() {
    }

    public Integer getAddressId() {
        return addressId;
    }

    public void setAddressId(Integer addressId) {
        this.addressId = addressId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Boolean getIsDefault() {
        return isDefault;
    }

    public void setIsDefault(Boolean aDefault) {
        isDefault = aDefault;
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

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }
    public String getCounty() {
        return county;
    }

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public void setCounty(String county) {
        this.county = county;
    }

    @Override
    public String toString() {
        return "Address{" +
                "addressId=" + addressId +
                ", province='" + province + '\'' +
                ", city='" + city + '\'' +
                ", county='" + county + '\'' +
                ", code=" + code +
                ", name='" + name + '\'' +
                ", contact='" + contact + '\'' +
                ", address='" + address + '\'' +
                ", userId=" + userId +
                ", isDefault=" + isDefault +
                ", state=" + state +
                ", addTime=" + addTime +
                '}';
    }
}
