package com.buaa.shopping.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.nxf.frame.dao.DAO;

import com.buaa.shopping.bean.GoodsAndType;
import com.buaa.shopping.bean.GoodsType;

public class GoodsAndTypeDAO extends DAO {
	
	private Statement st;
	private ResultSet rs;

	public List<GoodsAndType> findAll() throws SQLException {
		String sql = "select tbl_goods.id,tbl_goods.goodsname,tbl_goods.price,tbl_goods.count,"
				+ "tbl_goods.goodspic,tbl_goods.goodsdesc,tbl_goods_type.pid,tbl_goods_type.typename "
				+ "from tbl_goods INNER JOIN tbl_goods_type on tbl_goods.goodstype=tbl_goods_type.id";
		List<GoodsAndType> list = new ArrayList<GoodsAndType>();
		st = this.getConn().createStatement();
		rs = st.executeQuery(sql);
		while (rs.next()) {
			GoodsAndType gat = new GoodsAndType();
			gat.setId(rs.getInt(1));
			gat.setGoodsname(rs.getString(2));
			gat.setPrice(rs.getFloat(3));
			gat.setCount(rs.getInt(4));
			gat.setGoodspic(rs.getString(5));
			gat.setGoodsdesc(rs.getString(6));
			
			GoodsType gt = new GoodsType();
			gt.setPid(rs.getInt(7));
			gt.setTypename(rs.getString(8));
			
			gat.setType(gt);
			list.add(gat);
		}
		return list;
	}

}
