package com.buaa.shopping.dao;

import java.sql.ResultSet;
import java.sql.SQLClientInfoException;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.nxf.frame.dao.DAO;

import com.buaa.shopping.bean.Order;

public class OrderDAO extends DAO{
	private Statement st;
	private ResultSet rs;
	
	public List<Order> queryByOrderNum(String num) throws SQLException{
		String sql = "select * from tbl_order where ordernum = "+ num;
		
		List<Order> list = new ArrayList<Order>();
				
		st = this.getConn().createStatement();
		rs = st.executeQuery(sql);
		while (rs.next()) {
			Order  order = new Order();
			order.setId(rs.getInt(1));
			order.setUid(rs.getInt(2));
			order.setGid(rs.getInt(3));
			order.setOrdernum(rs.getString(4));
			order.setBuytime(rs.getString(5));
			order.setTotal(rs.getFloat(6));
			order.setStatus(rs.getString(7));
			list.add(order);
		}
		
		return list;
	}
	
	public List<Order> queryOrder(String condition) throws SQLException{
		String sql = "select * from tbl_order where 1 and " + condition;
		
		List<Order> list = new ArrayList<Order>();
				
		st = this.getConn().createStatement();
		rs = st.executeQuery(sql);
		while (rs.next()) {
			Order  order = new Order();
			order.setId(rs.getInt(1));
			order.setUid(rs.getInt(2));
			order.setGid(rs.getInt(3));
			order.setOrdernum(rs.getString(4));
			order.setBuytime(rs.getString(5));
			order.setTotal(rs.getFloat(6));
			order.setStatus(rs.getString(7));
			list.add(order);
		}
		
		return list;
	}
}
