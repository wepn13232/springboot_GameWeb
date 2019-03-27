package com.sprinboot.dazuoye.dao;


import com.sprinboot.dazuoye.pojo.User;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("userDao")
@Mapper
public interface UserDao {

//更具用户名查询用户
    @Select("select * from user where username=#{username}")
    User selectAllUser(@Param("username") String username) throws Exception;

//    增加用户
    @Insert("insert into user(username,password) values(#{username},#{password})")
    void addUser(User user) throws Exception;
}
