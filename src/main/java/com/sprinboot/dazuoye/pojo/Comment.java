package com.sprinboot.dazuoye.pojo;

public class Comment {
    private Integer id;
    private Integer game_id;
    private String comment;
    private String com_user;

    public Comment() {
        super();
    }

    public Comment(Integer id, Integer game_id, String comment, String com_user) {
        this.id = id;
        this.game_id = game_id;
        this.comment = comment;
        this.com_user = com_user;
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

    public String getCom_user() {
        return com_user;
    }

    public void setCom_user(String com_user) {
        this.com_user = com_user;
    }
}
