package com.buaa.shopping.service;

import java.util.List;

import org.nxf.frame.service.AbstractService;


public class CarService extends AbstractService{

	public CarService(String table_name, String bean_name) {
		super(table_name, bean_name);
		// TODO Auto-generated constructor stub
	}

	public List<?> getByUid(Integer id) {
		try {
			return dao.select("uid="+id);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
}
