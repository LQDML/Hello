package com.bdqn.service;

import com.bdqn.entity.User;

public interface IUserService {
	public User getUserById(int userId);
	
	public int insertUser(User user);
}
