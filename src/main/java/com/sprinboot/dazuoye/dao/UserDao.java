package com.sprinboot.dazuoye.dao;


import com.sprinboot.dazuoye.pojo.User;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("userDao")
@Mapper
public interface UserDao {

//    查询用户
    @Select("select * from user")
     List<User> getAllUser();

//删除用户
@Delete("delect  from user where id=#{id}")
     void delectUser(Integer id);

//增加用户
    @Insert("insert into user values(username,password)")
    void insertUser(String username,String password);

//    修改用户密码
    @Update("update user set password=#{password} where username=#{username}")
    void updatePassword(String username,String password);
}
