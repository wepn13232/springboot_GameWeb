package com.sprinboot.dazuoye.controller;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.sprinboot.dazuoye.dao.CommentDao;
import com.sprinboot.dazuoye.pojo.Comment;
import com.sprinboot.dazuoye.service.CommentServices;
import com.sprinboot.dazuoye.service.GameServices;
import com.sprinboot.dazuoye.service.ShopCarServices;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/user")
public class CommentController {
    @Resource
    private CommentServices commentServices;
    @Resource
    private GameServices gameServices;
    @Resource
    private ShopCarServices shopCarServices;

    //    根据用户名和游戏名判断是否可以评论
    @RequestMapping("/checkComment")
    @ResponseBody
    public String checkComment(@RequestParam String username, @RequestParam String game_name) throws Exception {
        JSONObject jsonObject = new JSONObject();
        Integer status = shopCarServices.findStatusByUserNameAndGameName(username, game_name);
//        System.out.println("****************"+status+"*****************"+username+"*****************"+game_name);
        if (status != null && status == 1) {
            jsonObject.put("commentMsg", "checked");
        } else if (status == null || status == 0) {
            jsonObject.put("commentMsg", "noChecked");
        }
        return jsonObject.toJSONString();
    }


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
