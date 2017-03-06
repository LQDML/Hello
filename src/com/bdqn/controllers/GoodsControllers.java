package com.bdqn.controllers;

import java.util.LinkedList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
@RequestMapping("/view")
public class GoodsControllers {
	@RequestMapping 
	 public String goodsList(HttpSession httpSession){  
	     List<String> goods = new LinkedList<String>();  
	     
	     goods.add("朝阳");  
	     goods.add("海淀");  
	     goods.add("丰台");  
	     goods.add("西城");  
	     goods.add("昌平");
	     httpSession.setAttribute("prolist", goods);
		return "goods";  
	     
	 } 

}
