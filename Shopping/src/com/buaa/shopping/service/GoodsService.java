package com.buaa.shopping.service;

import java.util.List;

import org.nxf.frame.service.AbstractService;


public class GoodsService extends AbstractService{

	public GoodsService(String table_name, String bean_name) {
		super(table_name, bean_name);
	
	}
	
	public List<?> getByType(int t){
		List<?> list = null;
		try {
		 list = dao.select(" goodstype="+t);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	

};
