package com.sprinboot.dazuoye.service;

import com.sprinboot.dazuoye.pojo.Forum;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author Cedric on 2019/4/16
 * @description ${Description}
 */
public interface ForumServices {

    //根据游戏id查看论坛帖子
    List<Forum> findForumByGameId (int game_id)throws Exception;

    //根据帖子id查询帖子具体内容
    Forum findForumByForumId (int id)throws Exception;

//    发表帖子（插入帖子）
    int submitForum(String forum_title,String forum_content,int game_id,String username) throws Exception;

}
