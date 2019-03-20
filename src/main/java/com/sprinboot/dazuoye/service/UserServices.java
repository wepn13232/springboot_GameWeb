package com.sprinboot.dazuoye.service;

import com.sprinboot.dazuoye.pojo.User;

import java.util.List;

public interface UserServices {
//    查询用户
    List<User> getAllUser(User user);

//    删除用户
    void delectUser(Integer id);

//    增加用户
    int insertUser(String username, String password);

//    修改用户密码
    int updatePassword(String username, String password);
}
