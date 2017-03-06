package com.bdqn.dao;

import java.util.List;

import com.bdqn.entity.Recommend;

public interface RecommendMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Recommend record);

    int insertSelective(Recommend record);

    Recommend selectByPrimaryKey(Integer id);
    

     List<Recommend> SelectRecommend();
    
    
    int updateByPrimaryKeySelective(Recommend record);

    int updateByPrimaryKey(Recommend record);
}