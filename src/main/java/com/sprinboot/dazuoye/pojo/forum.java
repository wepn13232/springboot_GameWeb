package com.sprinboot.dazuoye.pojo;

public class forum {
    private int id;
    private String forum_title;
    private String foeum_content;
    private String username;


    public forum() {
        super();
    }

    public forum(int id, String forum_title, String foeum_content, String username) {
        this.id = id;
        this.forum_title = forum_title;
        this.foeum_content = foeum_content;
        this.username = username;
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

    public String getFoeum_content() {
        return foeum_content;
    }

    public void setFoeum_content(String foeum_content) {
        this.foeum_content = foeum_content;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
}
