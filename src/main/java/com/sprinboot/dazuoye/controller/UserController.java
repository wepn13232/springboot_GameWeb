package com.sprinboot.dazuoye.controller;

import com.sprinboot.dazuoye.service.UserServices;
import org.springframework.stereotype.Controller;

import javax.annotation.Resource;

@Controller
public class UserController {
    @Resource
    private UserServices userServices;
}
