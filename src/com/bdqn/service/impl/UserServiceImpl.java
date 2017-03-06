package com.bdqn.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bdqn.dao.UserMapper;
import com.bdqn.entity.User;
import com.bdqn.service.IUserService;

@Service("userService")
public class UserServiceImpl implements IUserService {
	@Autowired
	private UserMapper userDao;
	@Override
	public User getUserById(int userId) {
		// TODO Auto-generated method stub
		return this.userDao.selectByPrimaryKey(userId);
	}
	@Override
	public int insertUser(User user) {
		// TODO Auto-generated method stub
		return this.userDao.insert(user);
	}

}
