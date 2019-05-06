package com.sprinboot.dazuoye.dao;

import com.sprinboot.dazuoye.pojo.Comment;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;

@Repository("commentDao")
@Mapper
public interface CommentDao {
    //查询指定游戏所有评论信息
    @Select("select * from comment where game_id=#{id} order by id desc")
    List<Comment> getAllCommentById(int id) throws Exception;

    //发表评论
    @Insert("insert into comment (game_id,comment,username) values(#{game_id},#{comment},#{username})")
    Boolean addComment(Comment comments) throws Exception;

    //查询用户是否购买游戏
    @Select("select status from shopcar where username=#{username} and game_name=(select game_name from game where id=#{game_id})")
    Integer selectGameStatus(String username,int game_id) throws Exception;

    //查询当前游戏的评论数量
    @Select("select count(*) from comment where game_id = #{id}")
    int getCommentCount(int id) throws Exception;

    //    分页操作
    @Select("select * from comment where game_id = #{id} order by id desc limit #{start},#{size}")
    List<Comment> findByPage( HashMap<String, Object> map) throws Exception;
}
