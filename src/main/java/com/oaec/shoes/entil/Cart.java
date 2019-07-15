package com.oaec.shoes.entil;

public class Cart {
    private Integer cartId;
    private Integer userId;
    private Integer productId;
    private Integer num;

    public Cart() {
    }

    public Cart(Integer cartId, Integer userId, Integer productId, Integer num) {
        this.cartId = cartId;
        this.userId = userId;
        this.productId = productId;
        this.num = num;
    }

    public Cart(Integer userId, Integer productId, Integer num) {
        this.userId = userId;
        this.productId = productId;
        this.num = num;
    }

    public Integer getCartId() {
        return cartId;
    }

    public void setCartId(Integer cartId) {
        this.cartId = cartId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getProductId() {
        return productId;
    }

    public void setProductId(Integer productId) {
        this.productId = productId;
    }

    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }
}
