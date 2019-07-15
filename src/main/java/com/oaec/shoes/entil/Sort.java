package com.oaec.shoes.entil;

import java.util.Date;

public class Sort {
    private Integer sortId;
    private String sortName;
    private Integer state;
    private Date addTime;

    public Sort() {
    }

    public Sort(Integer sortId, String sortName, Integer state, Date addTime) {
        this.sortId = sortId;
        this.sortName = sortName;
        this.state = state;
        this.addTime = addTime;
    }

    public Sort(String sortName, Integer state, Date addTime) {
        this.sortName = sortName;
        this.state = state;
        this.addTime = addTime;
    }

    public Integer getSortId() {
        return sortId;
    }

    public void setSortId(Integer sortId) {
        this.sortId = sortId;
    }

    public String getSortName() {
        return sortName;
    }

    public void setSortName(String sortName) {
        this.sortName = sortName;
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
}
