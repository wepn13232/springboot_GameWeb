package com.sprinboot.dazuoye.pojo;

import java.util.Date;

public class OderList {
    private Integer id;
    private String game_name;
    private String username;
    private Date date;
    private int status;

    public OderList() {
        super();
    }

    public OderList(Integer id, String game_name, String username, Date date, int status) {
        this.id = id;
        this.game_name = game_name;
        this.username = username;
        this.date = date;
        this.status = status;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getGame_name() {
        return game_name;
    }

    public void setGame_name(String game_name) {
        this.game_name = game_name;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
}
