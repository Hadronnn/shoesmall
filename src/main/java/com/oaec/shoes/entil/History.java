package com.oaec.shoes.entil;

public class History {
    private Integer historyId;
    private Integer userId;
    private String content;

    public History() {
    }

    public History(Integer userId, String content) {
        this.userId = userId;
        this.content = content;
    }

    public History(Integer historyId, Integer userId, String content) {
        this.historyId = historyId;
        this.userId = userId;
        this.content = content;
    }

    public Integer getHistoryId() {
        return historyId;
    }

    public void setHistoryId(Integer historyId) {
        this.historyId = historyId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}
