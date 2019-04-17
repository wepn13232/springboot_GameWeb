package com.sprinboot.dazuoye.service.serviceImpl;

import com.sprinboot.dazuoye.dao.CommentDao;
import com.sprinboot.dazuoye.pojo.Comment;
import com.sprinboot.dazuoye.pojo.Game;
import com.sprinboot.dazuoye.pojo.PageBean;
import com.sprinboot.dazuoye.service.CommentServices;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;
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
    public Boolean addComment(Comment comment) throws Exception {
//        Comment comment1 = new Comment();
//        comment1.setGame_id(game_id);
//        comment1.setUsername(username);
//        comment1.setComment(comment);
//        System.out.println(comment1);
        return commentDao.addComment(comment);
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

    //分页操作
    @Override
    public PageBean<Comment> findByPage(int currentPage, int game_id) throws Exception {
        HashMap<String, Object> map = new HashMap<String, Object>();
        PageBean<Comment> pageBean = new PageBean<Comment>();

//        封装当前页数
        pageBean.setCurrPage(currentPage);
//        每页显示的数据
        int pageSize = 5;
        pageBean.setPageSize(pageSize);
//        封装总记录数
        int totalCount = commentDao.getCommentCount(game_id);
        pageBean.setTotalCount(totalCount);

//        封装总页数
        double tc = totalCount;
        Double num = Math.ceil(tc / pageSize);//向上取整
        pageBean.setTotalPage(num.intValue());
        map.put("id",game_id);
        map.put("start", (currentPage - 1) * pageSize);
        map.put("size", pageBean.getPageSize());


        //封装内容
        List<Comment> lists = commentDao.findByPage(map);
        pageBean.setLists(lists);



        return pageBean;
    }
}
