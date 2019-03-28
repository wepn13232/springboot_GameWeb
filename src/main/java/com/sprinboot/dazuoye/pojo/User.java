package com.sprinboot.dazuoye.pojo;

public class User {
   private String username;//用户名
    private String password;//密码
    private Integer id; //id
    private Integer cashLeft;//剩余余额
    private String gameExist;//已购买的游戏


    public User() {
        super();
    }

    public User(String username, String password, Integer id, Integer cashLeft, String gameExist) {
        this.username = username;
        this.password = password;
        this.id = id;
        this.cashLeft = cashLeft;
        this.gameExist = gameExist;
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

    public Integer getCashLeft() {
        return cashLeft;
    }

    public void setCashLeft(Integer cashLeft) {
        this.cashLeft = cashLeft;
    }

    public String getGameExist() {
        return gameExist;
    }

    public void setGameExist(String gameExist) {
        this.gameExist = gameExist;
    }
}
