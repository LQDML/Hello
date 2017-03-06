package com.bdqn.service;

import java.util.List;

import com.bdqn.entity.Goods;

public interface GetGoods {
	List<Goods> selectByPrimaryKey(String select);
	
	List<Goods> selectByPrimary();
	
	int updateByPrimaryKeySelective(Goods record);
	
	Goods selectByPrimaryKeys(Integer id);
}
