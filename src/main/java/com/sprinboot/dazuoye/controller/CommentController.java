package com.sprinboot.dazuoye.controller;

import com.alibaba.fastjson.JSONArray;
import com.sprinboot.dazuoye.dao.CommentDao;
import com.sprinboot.dazuoye.pojo.Comment;
import com.sprinboot.dazuoye.service.CommentServices;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class CommentController {
    @Resource
    private CommentServices commentServices;

    //异步查看评论
//    @RequestMapping("/game_info")
//    @ResponseBody
//    public String comment_info(@RequestParam Integer id, Model model) throws Exception{
////        if (id!= null){
////            try {
////                Comment comment = commentServices.getAllCommentById(id);
////                System.out.println("****************************返回json");
////                return JSONArray.toJSONString(comment);
////            }   catch (Exception e) {
////                e.printStackTrace();
////                return "failed";
////            }
////        }   else {
////            return "noData";
////        }
//        List<Comment> comments = commentServices.getAllCommentById(id);
//        for (Comment comment:comments){
//            model.addAttribute("getAllCommentById",comments);
//        }
//        return "game_info";
//    }

}
