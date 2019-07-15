package com.oaec.shoes.entil;

import java.util.Date;

public class Integral {
    private Integer integralId;
    private Integer userId;
    private Integer num;
    private Date getTime;

    public Integral() {
    }

    public Integral(Integer userId, Integer num, Date getTime) {
        this.userId = userId;
        this.num = num;
        this.getTime = getTime;
    }

    public Integral(Integer integralId, Integer userId, Integer num, Date getTime) {
        this.integralId = integralId;
        this.userId = userId;
        this.num = num;
        this.getTime = getTime;
    }

    public Integer getIntegralId() {
        return integralId;
    }

    public void setIntegralId(Integer integralId) {
        this.integralId = integralId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }

    public Date getGetTime() {
        return getTime;
    }

    public void setGetTime(Date getTime) {
        this.getTime = getTime;
    }
}
