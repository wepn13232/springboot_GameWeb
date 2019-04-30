package com.sprinboot.dazuoye.service.serviceImpl;

import com.sprinboot.dazuoye.dao.ForumDao;
import com.sprinboot.dazuoye.pojo.Forum;
import com.sprinboot.dazuoye.service.ForumServices;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * @author Cedric on 2019/4/16 11:28
 * @filename ForumServicesImpl
 * @description 论坛实现方法
 */
@Service
public class ForumServicesImpl implements ForumServices {
    @Resource
    private ForumDao forumDao;

    //根据游戏id查看论坛帖子
    @Override
    public List<Forum> findForumByGameId(int game_id)throws Exception {
        return forumDao.findForumByGameId(game_id);
    }

    //根据帖子id查询帖子具体内容
    @Override
    public Forum findForumByForumId(int id)throws Exception {
        return forumDao.findForumByForumId(id);
    }


//    插入帖子（发表帖子）
    @Override
    public int submitForum(String forum_title, String forum_content,int game_id,String username) throws Exception {
        Forum forum=new Forum();
        forum.setForum_title(forum_title);
        forum.setForum_content(forum_content);
        forum.setGame_id(game_id);
        Date date = new Date();
        SimpleDateFormat dateformat = new SimpleDateFormat("yyyy-MM-dd HH:mm");
        forum.setDate(dateformat.format(date));
        forum.setUsername(username);
        return forumDao.submitForum(forum);
    }


}