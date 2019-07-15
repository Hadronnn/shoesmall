package com.oaec.shoes.entil;

import java.util.Date;

public class User {
    private Integer userId;
    private String userName;
    private String password;
    private Double money;
    private String phone;
    private Boolean isAdmin;
    private Date registerTime;

    public User() {
    }

    public User(String userName, String password, String phone) {
        this.userName = userName;
        this.password = password;
        this.phone = phone;
    }

    public User(String uaerName, String password, Double money, String phone, Boolean isAdmin, Date registerTime) {
        this.userName = uaerName;
        this.password = password;
        this.money = money;
        this.phone = phone;
        this.isAdmin = isAdmin;
        this.registerTime = registerTime;
    }

    public User(Integer userId, String uaerName, String password, Double money, String phone, Boolean isAdmin, Date registerTime) {
        this.userId = userId;
        this.userName = uaerName;
        this.password = password;
        this.money = money;
        this.phone = phone;
        this.isAdmin = isAdmin;
        this.registerTime = registerTime;
    }

    public Integer getUserId() {
        return userId;
    }

    public String getUserName() {
        return userName;
    }

    public String getPassword() {
        return password;
    }

    public Double getMoney() {
        return money;
    }

    public String getPhone() {
        return phone;
    }

    public Boolean getIsAdmin() {
        return isAdmin;
    }

    public Date getRegisterTime() {
        return registerTime;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public void setUserName(String uaerName) {
        this.userName = uaerName;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setMoney(Double money) {
        this.money = money;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public void setIsAdmin(Boolean admin) {
        isAdmin = admin;
    }

    public void setRegisterTime(Date registerTime) {
        this.registerTime = registerTime;
    }

    @Override
    public String toString() {
        return "User{" +
                "userId=" + userId +
                ", uaerName='" + userName + '\'' +
                ", password='" + password + '\'' +
                ", money=" + money +
                ", phone=" + phone +
                ", isAdmin=" + isAdmin +
                ", registerTime=" + registerTime +
                '}';
    }
}
