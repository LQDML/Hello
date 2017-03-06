package com.bdqn.service;

import java.util.List;

import com.bdqn.entity.Users;

public interface SelectUser {
	
	int selectUser(Users record);
	
	int insert(Users record);
	
	int selectUserName(String username);
	
	List<Users> selectList(Users record);
	
	int selectcounts();
	
	List<Users> selects(Users record);
}
