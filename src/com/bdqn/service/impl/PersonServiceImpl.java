package com.bdqn.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bdqn.dao.PersonMapper;
import com.bdqn.entity.Person;
import com.bdqn.service.IPersonService;
@Service("personService")
public class PersonServiceImpl implements IPersonService {
   @Autowired
	PersonMapper personMapper;
	
	
	@Override
	public int insertPerson(Person person) {
		// TODO Auto-generated method stub
		return personMapper.insert(person);
	}

}
