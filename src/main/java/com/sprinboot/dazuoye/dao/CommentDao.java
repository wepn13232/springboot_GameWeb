package com.sprinboot.dazuoye.dao;

import com.sprinboot.dazuoye.pojo.Comment;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("commentDao")
@Mapper
public interface CommentDao {
    //查询指定游戏所有评论信息
    @Select("select * from Comment where game_id=#{id}")
    List<Comment> getAllCommentById(int id) throws Exception;

    //发表评论
    @Insert("insert into comment (game_id,comment,username) values(#{game_id},#{comment},#{username})")
    int addComment(Comment comment) throws Exception;
}
