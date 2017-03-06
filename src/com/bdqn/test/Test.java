package com.bdqn.test;

import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.bdqn.entity.Recommend;
import com.bdqn.service.GetRecommend;

@RunWith(SpringJUnit4ClassRunner.class)
//表示继承了SpringJUnit4ClassRunner类
@ContextConfiguration(locations = { "classpath:spring-mybatis.xml" })
public class Test {
	private static Logger logger = Logger.getLogger(Test.class);
	
	@Resource
	private GetRecommend  recommend= null;
	@org.junit.Test
	public void test1() {
		List<Recommend> info = recommend.SelectRecommends();
		for (Recommend recommend : info) {
			System.out.println(recommend.toString());
		}

		
	}
}
