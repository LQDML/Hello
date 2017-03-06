package com.bdqn.controllers;



import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bdqn.entity.Users;
import com.bdqn.service.SelectUser;
import com.google.gson.Gson;


@Controller
@RequestMapping("/denglu")
public class GetUsersControllers {
	
	@Autowired
	@Qualifier("users")
	SelectUser users;
	
	
	@RequestMapping
	public String deng(){
		return "denglu";
		
	}
	
	@RequestMapping("/checkName")
	public void checkUserName(HttpServletResponse resp, String username)
			throws IOException {		
		int i = users.selectUserName(username);
		PrintWriter out = resp.getWriter();
		out.print(i);
		out.flush();
		out.close();

	}
	
	@RequestMapping("/checkNames")
	public void checkUserNames(HttpServletRequest request,HttpServletResponse resp, String username)
			throws IOException {
		List<Users> list = null;
		int pages=Integer.parseInt(request.getParameter("page"));
		int size=Integer.parseInt(request.getParameter("rows"));
		String sort = request.getParameter("sort");
		String order = request.getParameter("order");
		int page = (pages-1)*size;
		if(sort==null||sort.length()<1){
			Users user=new Users(page,size);
			System.out.println(user.toString());
			list=users.selectList(user);
		}else{
			Users user=new Users(page,size,sort,order);
			System.out.println(user.toString());
			list = users.selects(user);
		}
		
		
		
		int a=users.selectcounts();
		PrintWriter out = resp.getWriter();
		Map map=new HashMap();
		map.put("total", a);
		map.put("rows", list);
		Gson gson=new Gson();
		out.print(gson.toJson(map));
		out.flush();
		out.close();

	}
	@RequestMapping("/user")
	public String getusers(HttpServletRequest request){
		
		String select=request.getParameter("shu2");
		String select1=request.getParameter("mi");
		System.out.println(select+select1);
		Users user=new Users(select,select1);
		System.out.println("wo2");
		Integer id=users.selectUser(user);
		System.out.println(users.selectUser(user));

		if(id==0){
			return "denglu";
		
		}else {
			return "xitong";
		}
	}
	@RequestMapping("/insert")
	public String insert(HttpServletRequest request){
		System.out.println("wo");
		String insert=request.getParameter("shu");
		String insert1=request.getParameter("mi1");
		System.out.println("wo");
		Users user=new Users(insert,insert1);
		Integer id=users.insert(user);
		if(id!=0){
			System.out.println("注册成功");
			return "denglu";
		}else {
			System.out.println("注册失败");
			return "zhuce";
		}
		
		
	}
	@RequestMapping("/zhuce")
	public String zhuce(){
		return "zhuce";
		
	}
}
