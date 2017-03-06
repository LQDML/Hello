package com.bdqn.dao;

import java.util.List;

import com.bdqn.entity.Users;

public interface UsersMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Users record);

    int insertSelective(Users record);

    Users selectByPrimaryKey(Integer id);
    
    int selectUserName(String username);

    List<Users> selectList(Users record);
    
    int selectcounts();

    int updateByPrimaryKeySelective(Users record);

    int updateByPrimaryKey(Users record);
    
    int selectUser(Users record);
}