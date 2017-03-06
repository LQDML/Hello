package com.bdqn.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bdqn.entity.Recommend;
import com.bdqn.service.GetRecommend;


@Controller
@RequestMapping("/test")
public class RecommendController {
@Autowired
	GetRecommend recommend;
	@RequestMapping
	public String getRecommend(HttpSession httpSession){
		
		List<Recommend> info= recommend.SelectRecommends();
	if(info!=null&&info.size()>0){
		httpSession.setAttribute("prolist", info);
	}
		return "view";
		
	}	
	
}
