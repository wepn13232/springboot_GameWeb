package com.sprinboot.dazuoye.interceptor;

import com.sprinboot.dazuoye.pojo.User;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Interceptor extends HandlerInterceptorAdapter {
    //定义不需要拦截的访问路径
    public static final String[] IGNORE_URL = {"static/"};

    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object o) throws Exception {
        //登录判断，判断session里面是否有user
        boolean flag = false;
        String path = request.getServletPath();

        for (String url : IGNORE_URL) {
            if (path.contains(url)) {
                flag = true;
                break;
            }
        }
        if (!flag) {
            User user = (User) request.getSession().getAttribute("usersession");
            if (user == null) {
                request.setAttribute("error", "你还没登录");
                response.sendRedirect(request.getContextPath() + "/nologin");
            } else {
                flag = true;
            }
        }
        return flag;
    }
}
