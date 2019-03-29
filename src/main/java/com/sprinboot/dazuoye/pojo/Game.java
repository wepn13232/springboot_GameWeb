package com.sprinboot.dazuoye.pojo;

public class Game {
    private Integer id;
    private String game_name;
    private String game_info;
    private Integer game_price;
    private String system;
    private String cpu;
    private String memory;
    private String GPU;


    public Game() {
        super();
    }

    public Game(Integer id, String game_name, String game_info, Integer game_price, String system, String cpu, String memory, String GPU) {
        this.id = id;
        this.game_name = game_name;
        this.game_info = game_info;
        this.game_price = game_price;
        this.system = system;
        this.cpu = cpu;
        this.memory = memory;
        this.GPU = GPU;
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

    public String getSystem() {
        return system;
    }

    public void setSystem(String system) {
        this.system = system;
    }

    public String getCpu() {
        return cpu;
    }

    public void setCpu(String cpu) {
        this.cpu = cpu;
    }

    public String getMemory() {
        return memory;
    }

    public void setMemory(String memory) {
        this.memory = memory;
    }

    public String getGPU() {
        return GPU;
    }

    public void setGPU(String GPU) {
        this.GPU = GPU;
    }
}
