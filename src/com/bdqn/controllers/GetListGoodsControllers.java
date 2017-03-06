package com.bdqn.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bdqn.entity.Goods;
import com.bdqn.service.GetGoods;

@Controller
@RequestMapping("/info")
public class GetListGoodsControllers {
@Autowired
GetGoods goods;
@RequestMapping
	public String getgoods(HttpServletRequest request,HttpSession httpSession){
		String select=request.getParameter("ware");
		if(select.equals("请选择")){
			List<Goods> list1=goods.selectByPrimary();
			httpSession.setAttribute("prolist", list1);
		}else {
			List<Goods> list=goods.selectByPrimaryKey(select);
			httpSession.setAttribute("prolist", list);
		}
		
		return "viewShop";
		
	}
}
