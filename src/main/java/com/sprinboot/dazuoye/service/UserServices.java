package com.sprinboot.dazuoye.service;

import com.sprinboot.dazuoye.pojo.User;

import java.util.List;

public interface UserServices {
//    查询用户
    List<User> getUser();

//    删除用户
    void delectUser(Integer id);

//    增加用户
    void insertUser(String username,String password);

//    修改用户密码
    void updatePassword(String username,String password);
}
