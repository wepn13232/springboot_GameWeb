package com.sprinboot.dazuoye.service.serviceImpl;


import com.sprinboot.dazuoye.dao.UserDao;
import com.sprinboot.dazuoye.pojo.User;
import com.sprinboot.dazuoye.service.UserServices;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class UserServicesImpl implements UserServices {

    @Resource
    private UserDao userDao;




    @Override
    public List<User> getAllUser(User user) {
        return userDao.getAllUser(user);
    }

    @Override
    public void delectUser(Integer id) {
        userDao.delectUser(id);
    }

    @Override
    public int insertUser(String username, String password) {
        return userDao.insertUser(username, password);
    }

    @Override
    public int updatePassword(String username, String password) {
        return userDao.updatePassword(username, password);
    }
}
