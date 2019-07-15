package com.oaec.shoes.entil;

import java.util.Date;

public class Evaluate {
    private Integer evaluateId;
    private Integer userId;
    private Integer productId;
    private String content;
    private Date createTime;
    private Integer leval;

    public Evaluate() {
    }

    public Evaluate(Integer userId, Integer productId, String content, Date createTime, Integer leval) {
        this.userId = userId;
        this.productId = productId;
        this.content = content;
        this.createTime = createTime;
        this.leval = leval;
    }

    public Evaluate(Integer evaluateId, Integer userId, Integer productId, String content, Date createTime, Integer leval) {
        this.evaluateId = evaluateId;
        this.userId = userId;
        this.productId = productId;
        this.content = content;
        this.createTime = createTime;
        this.leval = leval;
    }

    public Integer getEvaluateId() {
        return evaluateId;
    }

    public void setEvaluateId(Integer evaluateId) {
        this.evaluateId = evaluateId;
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

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Integer getLeval() {
        return leval;
    }

    public void setLeval(Integer leval) {
        this.leval = leval;
    }
}
