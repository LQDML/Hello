package com.bdqn.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bdqn.dao.RecommendMapper;
import com.bdqn.entity.Recommend;
import com.bdqn.service.GetRecommend;
@Service("recommend")
public class RecommendImpl implements GetRecommend {
  @Autowired
	RecommendMapper recommend;
	
	@Override
	public List<Recommend> SelectRecommends() {
		// TODO Auto-generated method stub
		return recommend.SelectRecommend();
	}

}
