package com.bdqn.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bdqn.entity.Goods;
import com.bdqn.service.GetGoods;

@Controller
@RequestMapping("/xiugai")
public class GetUpdateGoods {
	@Autowired
	GetGoods goods;
	  @RequestMapping
	public String updates(HttpServletRequest request,HttpSession httpSession){
		  String update=request.getParameter("id");
		  int num=Integer.parseInt(update);
		  Goods info=goods.selectByPrimaryKeys(num);
		  httpSession.setAttribute("prolists", info);
		return "update";
		
	}
	
	

}
