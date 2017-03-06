 package com.bdqn.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bdqn.entity.User;
import com.bdqn.service.IUserService;

@Controller
@RequestMapping("/user")
public class Usercontroller {
	@Autowired
	IUserService userService;
	
	
	@RequestMapping("/test")
public String show(){
		
	return "register";
	
}
	@RequestMapping("/registerUser")
	public String registerUser(@ModelAttribute("user") User user,ModelMap modelMap){
		int a= userService.insertUser(user);
		if(a>0){
			modelMap.addAttribute("msg", "恭喜添加用户成功");
		}else{
			modelMap.addAttribute("msg", "恭喜添加用户失败");
		}
		return "result";
		
	}
}
