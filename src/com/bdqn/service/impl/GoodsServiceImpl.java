package com.bdqn.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bdqn.dao.GoodsMapper;
import com.bdqn.entity.Goods;
import com.bdqn.service.GetGoods;
@Service("goods")
public class GoodsServiceImpl implements GetGoods {
@Autowired
GoodsMapper goods;

	@Override
	public List<Goods> selectByPrimaryKey(String select) {
		// TODO Auto-generated method stub
		return goods.selectByPrimaryKey(select);
	}

	@Override
	public List<Goods> selectByPrimary() {
		// TODO Auto-generated method stub
		return goods.selectByPrimary();
	}

	@Override
	public int updateByPrimaryKeySelective(Goods record) {
		// TODO Auto-generated method stub
		return goods.updateByPrimaryKeySelective(record);
	}

	@Override
	public Goods selectByPrimaryKeys(Integer id) {
		// TODO Auto-generated method stub
		return goods.selectByPrimaryKeys(id);
	}

}
