package com.buaa.shopping.service;

import java.sql.SQLException;
import java.util.List;

import org.nxf.frame.service.AbstractService;

import com.buaa.shopping.bean.Order;
import com.buaa.shopping.bean.User;
import com.buaa.shopping.dao.OrderDAO;

public class OrderService extends AbstractService{
	
	public OrderService(String table_name, String bean_name) {
		super(table_name, bean_name);
		// TODO Auto-generated constructor stub
	}
	
	public Order queryByOrderNum(String num){
		OrderDAO oDao = new OrderDAO();
		Order order = null;
		
		try {
			order = oDao.queryByOrderNum(num).get(0);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		return order;
	}
	
	public List<Order> queryOrderByUser(User user){
		OrderDAO oDao = new OrderDAO();
		List<Order> list = null;
		String condition = "uid ="+user.getId();
		try {
			list = oDao.queryOrder(condition);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		return list;
	}
	
	

}
