package com.buaa.shopping.service;

import java.util.List;

import org.nxf.frame.dao.DAO;
import org.nxf.frame.service.AbstractService;

import com.buaa.shopping.bean.UserRole;
import com.buaa.shopping.dao.UserRoleDAO;


public class UserRoleService extends AbstractService{

	private UserRoleDAO urd;
	
	public UserRoleService(DAO dao) {
		super(dao);
		urd = (UserRoleDAO) dao;
		// TODO Auto-generated constructor stub
	}

	public List<UserRole> select() {
		// TODO Auto-generated method stub
		try {
			return urd.select();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}


}
