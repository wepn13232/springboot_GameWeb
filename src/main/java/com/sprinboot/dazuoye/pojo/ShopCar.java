package com.sprinboot.dazuoye.pojo;

import java.util.Date;

public class ShopCar {
    private Integer id;
    private String username;
    private String game_name;
    private Integer game_price;
    private String date;
    private Integer status;

    public ShopCar() {
        super();
    }

    public ShopCar(Integer id, String username, String game_name, Integer game_price, String date, Integer status) {
        this.id = id;
        this.username = username;
        this.game_name = game_name;
        this.game_price = game_price;
        this.date = date;
        this.status = status;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getGame_name() {
        return game_name;
    }

    public void setGame_name(String game_name) {
        this.game_name = game_name;
    }

    public Integer getGame_price() {
        return game_price;
    }

    public void setGame_price(Integer game_price) {
        this.game_price = game_price;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }
}
