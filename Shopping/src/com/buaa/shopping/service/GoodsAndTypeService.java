package com.buaa.shopping.service;

import java.sql.SQLException;
import java.util.List;

import org.nxf.frame.dao.DAO;
import org.nxf.frame.service.AbstractService;

import com.buaa.shopping.dao.GoodsAndTypeDAO;

public class GoodsAndTypeService extends AbstractService {

	public GoodsAndTypeService(DAO dao) {
		super(dao);
	}
	
	public List<?> getGT(){
		GoodsAndTypeDAO d = (GoodsAndTypeDAO)dao;
		try {
			return d.findAll();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
}
