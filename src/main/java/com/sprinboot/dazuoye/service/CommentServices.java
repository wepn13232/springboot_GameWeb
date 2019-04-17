package com.sprinboot.dazuoye.service;

import com.sprinboot.dazuoye.pojo.Comment;
import com.sprinboot.dazuoye.pojo.PageBean;

import java.util.HashMap;
import java.util.List;

public interface CommentServices {
    //查询指定游戏评论消息
    List<Comment> getAllCommentById(int id) throws Exception;

    //发表评论
    Boolean addComment(Comment comment) throws Exception;

    //判断用户游戏状态
    Integer selectGameStatus(String username,int game_id) throws Exception;

    //分页查询评论
    PageBean<Comment> findByPage(int currentPage, int game_id) throws Exception;
}
