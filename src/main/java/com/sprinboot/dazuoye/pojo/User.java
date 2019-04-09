package com.sprinboot.dazuoye.pojo;

import java.io.Serializable;

public class User implements Serializable {
   private String username;//用户名
    private String password;//密码
    private Integer id; //id
    private int cashLeft;//剩余余额
    private String game_name;//已购买的游戏


    public User() {
        super();
    }

    public User(String username, String password, Integer id, int cashLeft, String game_name) {
        this.username = username;
        this.password = password;
        this.id = id;
        this.cashLeft = cashLeft;
        this.game_name = game_name;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public int getCashLeft() {
        return cashLeft;
    }

    public void setCashLeft(int cashLeft) {
        this.cashLeft = cashLeft;
    }

    public String getGame_name() {
        return game_name;
    }

    public void setGame_name(String game_name) {
        this.game_name = game_name;
    }
}
