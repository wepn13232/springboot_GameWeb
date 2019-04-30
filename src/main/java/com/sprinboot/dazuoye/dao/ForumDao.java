package com.sprinboot.dazuoye.dao;


import com.sprinboot.dazuoye.pojo.Forum;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("forumDao")
@Mapper
public interface ForumDao {

    //根据游戏id查看论坛帖子
    @Select("select * from forum where game_id=#{game_id} order by date desc")
    List<Forum> findForumByGameId (@Param("game_id") int game_id) throws Exception;

    //根据帖子id查询帖子具体内容
    @Select("select * from forum where id=#{id}")
    Forum findForumByForumId (@Param("id") int id)throws Exception;

//插入帖子（发表帖子）
    @Insert("insert into forum(forum_title,forum_content,game_id,username,date) values(#{forum_title},#{forum_content},#{game_id},#{username},#{date})")
    int submitForum(Forum forum) throws Exception;

}
