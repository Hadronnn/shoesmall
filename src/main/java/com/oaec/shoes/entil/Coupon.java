package com.oaec.shoes.entil;

public class Coupon {
    private Integer couponId;
    private Integer userId;
    private Double amount;
    private Integer term;
    private Integer state;

    public Coupon() {
    }

    public Coupon(Integer userId, Double amount, Integer term, Integer state) {
        this.userId = userId;
        this.amount = amount;
        this.term = term;
        this.state = state;
    }

    public Coupon(Integer couponId, Integer userId, Double amount, Integer term, Integer state) {
        this.couponId = couponId;
        this.userId = userId;
        this.amount = amount;
        this.term = term;
        this.state = state;
    }

    public Integer getCouponId() {
        return couponId;
    }

    public void setCouponId(Integer couponId) {
        this.couponId = couponId;
    }
}
