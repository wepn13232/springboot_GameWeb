package com.sprinboot.dazuoye.service;

import com.sprinboot.dazuoye.pojo.Comment;

import java.util.List;

public interface CommentServices {
    //查询指定游戏评论消息
    List<Comment> getAllCommentById(int id) throws Exception;

    //发表评论
    Boolean addComment(String username,String comment,int game_id) throws Exception;

    //判断用户游戏状态
    int selectGameStatus(String username,int game_id) throws Exception;
}
