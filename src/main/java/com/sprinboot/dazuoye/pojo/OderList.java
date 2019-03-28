package com.sprinboot.dazuoye.pojo;

import java.util.Date;

public class OderList {
    private Integer id;
    private String game;
    private String user;
    private Date date;

    public OderList() {
        super();
    }

    public OderList(Integer id, String game, String user, Date date) {
        this.id = id;
        this.game = game;
        this.user = user;
        this.date = date;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getGame() {
        return game;
    }

    public void setGame(String game) {
        this.game = game;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }
}
