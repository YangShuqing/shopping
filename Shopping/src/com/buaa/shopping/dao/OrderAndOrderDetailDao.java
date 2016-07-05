package com.buaa.shopping.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.junit.Test;
import org.nxf.frame.dao.DAO;

import com.buaa.shopping.bean.Order;



public class OrderAndOrderDetailDao extends DAO{
	private Statement st;
	private PreparedStatement ps;
	private ResultSet rs;
	public OrderAndOrderDetailDao() {
		// TODO Auto-generated constructor stub
	}
	
	@Test
	public int insertOrder(Order o) throws SQLException{
		String sql="insert into tbl_order values(?,?,?,?,?,?,?)";	
		ps= this.getConn().prepareStatement(sql);
		ps.setInt(1, o.getUid());
		ps.setInt(2, o.getGid());
		ps.setString(3, o.getOrdernum());
		ps.setString(4, o.getBuytime());
		ps.setFloat(5, o.getTotal());
		ps.setString(6, o.getStatus());
		ps.executeUpdate();
		rs = ps.getGeneratedKeys();
		if(rs.next()){
			return rs.getInt(1);
		}else {
			return -1;
		}		
	}
}
