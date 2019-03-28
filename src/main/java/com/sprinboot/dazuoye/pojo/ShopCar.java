package com.sprinboot.dazuoye.pojo;

import java.util.Date;

public class ShopCar {
    private Integer id;
    private String purchase_user;
    private String purchase_game;
    private Integer pruchase_price;
    private Date date;
    private Integer status;

    public ShopCar() {
        super();
    }

    public ShopCar(Integer id, String purchase_user, String purchase_game, Integer pruchase_price, Date date, Integer status) {
        this.id = id;
        this.purchase_user = purchase_user;
        this.purchase_game = purchase_game;
        this.pruchase_price = pruchase_price;
        this.date = date;
        this.status = status;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getPurchase_user() {
        return purchase_user;
    }

    public void setPurchase_user(String purchase_user) {
        this.purchase_user = purchase_user;
    }

    public String getPurchase_game() {
        return purchase_game;
    }

    public void setPurchase_game(String purchase_game) {
        this.purchase_game = purchase_game;
    }

    public Integer getPruchase_price() {
        return pruchase_price;
    }

    public void setPruchase_price(Integer pruchase_price) {
        this.pruchase_price = pruchase_price;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }
}
