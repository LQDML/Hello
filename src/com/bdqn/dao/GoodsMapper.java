package com.bdqn.dao;

import java.util.List;

import com.bdqn.entity.Goods;


public interface GoodsMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Goods record);

    int insertSelective(Goods record);

    Goods selectByPrimaryKeys(Integer id);

    int updateByPrimaryKeySelective(Goods record);

    int updateByPrimaryKey(Goods record);
    
    List<Goods> selectByPrimaryKey(String select);
    
    List<Goods> selectByPrimary();
    
}