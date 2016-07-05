package com.buaa.shopping.service;

import java.util.List;

import org.nxf.frame.service.AbstractService;

import com.buaa.shopping.bean.User;

public class UserService extends AbstractService{

	public UserService(String table_name, String bean_name) {
		super(table_name, bean_name);
	}

	public User checkLogin(String username, String password) {
		String str = " username='"+username+"' and password='"+password+"'";
		List<?> list = this.select(str);
		
		User user= null;
		
		if(list.size()>0)
		{
			user = (User)list.get(0);
		}
//		if(user.getRole()==3){
//			return user;
//		}
		return user;
	}
}
