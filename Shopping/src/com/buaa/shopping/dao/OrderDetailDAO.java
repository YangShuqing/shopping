package com.buaa.shopping.dao;

import java.sql.ResultSet;
import java.sql.SQLClientInfoException;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.nxf.frame.dao.DAO;

import com.buaa.shopping.bean.Order;
import com.buaa.shopping.bean.OrderDetail;

public class OrderDetailDAO extends DAO{
	private Statement st;
	private ResultSet rs;
	
	public List<OrderDetail> queryByOrderId(int orderid) throws SQLException{
		String sql = "select * from tbl_orderdetail where orderid = "+ orderid;
		
		List<OrderDetail> list = new ArrayList<OrderDetail>();
				
		st = this.getConn().createStatement();
		rs = st.executeQuery(sql);
		while (rs.next()) {
			OrderDetail  od = new OrderDetail();
			od.setId(rs.getInt(1));
			od.setOrderid(rs.getInt(2));
			od.setOrdernum(rs.getString(3));
			od.setGid(rs.getInt(4));
			od.setGname(rs.getString(5));
			od.setGpic(rs.getString(6));
			od.setGprice(rs.getFloat(7));
			od.setGtotal(rs.getInt(8));
			
			list.add(od);
		}
		
		return list;
	}
}
