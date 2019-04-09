package com.sprinboot.dazuoye.pojo;

public class Comment {
    private Integer id;
    private Integer game_id;
    private String comment;
    private String username;


    
    public Comment() {
        super();
    }

    public Comment(Integer id, Integer game_id, String comment, String username) {
        this.id = id;
        this.game_id = game_id;
        this.comment = comment;
        this.username = username;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getGame_id() {
        return game_id;
    }

    public void setGame_id(Integer game_id) {
        this.game_id = game_id;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
}
