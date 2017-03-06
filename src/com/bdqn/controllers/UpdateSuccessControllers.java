package com.bdqn.controllers;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bdqn.entity.Goods;
import com.bdqn.service.GetGoods;

@Controller
@RequestMapping("/viewShops")
public class UpdateSuccessControllers {
	@Autowired
	GetGoods goods;
	@RequestMapping
	public String get(/*HttpServletRequest request*/@ModelAttribute("good") Goods good){
		/*String id=request.getParameter("id");
		System.out.println(id);
		int ids=Integer.parseInt(id.trim());
		
		String goodsname= request.getParameter("goodsname");
		String goodsprice=request.getParameter("goodsprice");
	 int num=Integer.parseInt(goodsprice.trim());
		 
		String goodscount=request.getParameter("goodscount");
	int num1=Integer.parseInt(goodscount.trim());
	
		String billstatus=request.getParameter("billstatus");
	Goods good=new Goods(ids,goodsname,billstatus,num,num1);
		int a=goods.updateByPrimaryKeySelective(good);*/
		System.out.println(good.toString());
		int a=goods.updateByPrimaryKeySelective(good);
		
		if(a!=0){
			System.out.println("更新成功");
		}
	return "index";
		
	}

}
