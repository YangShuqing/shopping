package com.buaa.shopping.service;

import java.sql.SQLException;
import java.util.List;

import org.nxf.frame.service.AbstractService;

import com.buaa.shopping.bean.OrderDetail;
import com.buaa.shopping.dao.OrderDetailDAO;

public class OrderDetailService extends AbstractService{

	public OrderDetailService(String table_name, String bean_name) {
		super(table_name, bean_name);
		// TODO Auto-generated constructor stub
	}
	
	public List<?> queryByOrderId(int orderid){
		OrderDetailDAO orderDetailDAO = new OrderDetailDAO();
		List<OrderDetail> list =null;
		try {
			list = orderDetailDAO.queryByOrderId(orderid);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
}
