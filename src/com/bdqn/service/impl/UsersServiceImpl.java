package com.bdqn.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bdqn.dao.UsersMapper;
import com.bdqn.entity.Users;
import com.bdqn.service.SelectUser;
@Service("users")
public class UsersServiceImpl implements SelectUser	 {


	
	@Autowired
	UsersMapper users;
	
	@Override
	public int selectUserName(String username) {
		// TODO Auto-generated method stub
		return users.selectUserName(username);
	}
	@Override
	public int selectUser(Users record) {
		// TODO Auto-generated method stub
		return users.selectUser(record);
	}
	@Override
	public int insert(Users record) {
		// TODO Auto-generated method stub
		return users.insertSelective(record);
		
	}
	
	@Override
	public int selectcounts() {
		// TODO Auto-generated method stub
		return users.selectcounts();
	}
	@Override
	public List<Users> selectList(Users record) {
		// TODO Auto-generated method stub
		return users.selectList(record);
	}
	@Override
	public List<Users> selects(Users record) {
		// TODO Auto-generated method stub
		return null;
	}
	

}
