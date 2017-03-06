package com.bdqn.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bdqn.entity.Person;
import com.bdqn.service.IPersonService;

@Controller
@RequestMapping("/person")
public class PersonController {
	
	@Autowired
	IPersonService personService;
	@RequestMapping("/show")
 public String show(){
	return "registerPerson";
	 
 }
	@RequestMapping(value ="/zhuce",method = RequestMethod.POST)
	public String zhuce( @Valid @ModelAttribute("person") Person person /*, ModelMap modelMap*/ , Errors errors){
		
		
		if(errors.hasErrors()){
			return "registerPerson";
		}
		personService.insertPerson(person);
		/*if(insertPerson>0){
			modelMap.addAttribute("msg", "恭喜添加用户成功");
		}else{
			modelMap.addAttribute("msg", "恭喜添加用户失败");
		}*/
		System.out.println(person.toString());
		
		return "result1";
		
	}
}
