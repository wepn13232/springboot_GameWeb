package com.sprinboot.dazuoye.pojo;

public class Game {
    private Integer id;
    private String game_name;
    private String game_info;
    private Integer game_price;

    public Game() {
        super();
    }

    public Game(Integer id, String game_name, String game_info, Integer game_price) {
        this.id = id;
        this.game_name = game_name;
        this.game_info = game_info;
        this.game_price = game_price;
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

    public String getGame_info() {
        return game_info;
    }

    public void setGame_info(String game_info) {
        this.game_info = game_info;
    }

    public Integer getGame_price() {
        return game_price;
    }

    public void setGame_price(Integer game_price) {
        this.game_price = game_price;
    }
}
