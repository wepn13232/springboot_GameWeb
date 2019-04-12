package com.sprinboot.dazuoye.service.serviceImpl;

import com.sprinboot.dazuoye.dao.CommentDao;
import com.sprinboot.dazuoye.pojo.Comment;
import com.sprinboot.dazuoye.service.CommentServices;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class CommentServicesImpl implements CommentServices {

    @Resource
    private CommentDao commentDao;

    //查找当前游戏的所有评论
    @Override
    public List<Comment> getAllCommentById(int id) throws Exception {
        return commentDao.getAllCommentById(id);
    }

    //发表评论
    @Override
    public Boolean addComment(String username, String comment,int game_id) throws Exception {
        Comment comment1 = new Comment();
        comment1.setGame_id(game_id);
        comment1.setUsername(username);
        comment1.setComment(comment);
        System.out.println(comment1);
        return commentDao.addComment(comment1);
    }

    //判断用户游戏状态
    @Override
    public Integer selectGameStatus(String username, int game_id) throws Exception {
        Integer flag=commentDao.selectGameStatus(username,game_id);
        if (flag==1){
            return 1;
        }
        else {
            return 0;
        }
    }
}
