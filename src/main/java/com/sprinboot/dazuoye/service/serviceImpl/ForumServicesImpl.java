package com.sprinboot.dazuoye.service.serviceImpl;

import com.sprinboot.dazuoye.dao.ForumDao;
import com.sprinboot.dazuoye.pojo.Forum;
import com.sprinboot.dazuoye.service.ForumServices;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
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
}