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
    public List<User> getUser() {
        return null;
    }

    @Override
    public void delectUser(Integer id) {

    }

    @Override
    public void insertUser(String username, String password) {

    }

    @Override
    public void updatePassword(String username, String password) {

    }
}
