package com.sprinboot.dazuoye.pojo;




public class Forum {
    private int id;
    private String forum_title;
    private String forum_content;
    private String username;
    private String Date;
    private int game_id;


    public Forum() {
        super();
    }

    public Forum(int id, String forum_title, String forum_content, String username, String date, int game_id) {
        this.id = id;
        this.forum_title = forum_title;
        this.forum_content = forum_content;
        this.username = username;
        Date = date;
        this.game_id = game_id;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getForum_title() {
        return forum_title;
    }

    public void setForum_title(String forum_title) {
        this.forum_title = forum_title;
    }

    public String getForum_content() {
        return forum_content;
    }

    public void setForum_content(String foeum_content) {
        this.forum_content = foeum_content;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public int getGame_id() {
        return game_id;
    }

    public void setGame_id(int game_id) {
        this.game_id = game_id;
    }

    public String getDate() {
        return Date;
    }

    public void setDate(String date) {
        Date = date;
    }
}
