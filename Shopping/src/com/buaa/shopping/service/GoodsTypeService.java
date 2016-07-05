package com.buaa.shopping.service;

import java.util.ArrayList;
import java.util.List;

import org.nxf.frame.service.AbstractService;

import com.buaa.shopping.bean.GoodsType;

public class GoodsTypeService extends AbstractService{
	
	List<GoodsType> newList = new ArrayList<GoodsType>();
	List<?> oldList = null;
	
	public GoodsTypeService(String table_name, String bean_name) {
		super(table_name, bean_name);
		// TODO Auto-generated constructor stub
	}
	
	
	public List<GoodsType> parseCategory(){
		try {
			oldList = dao.select("");
			System.out.println("oldlist:"+oldList);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		parse(0,"");
		System.out.println("new:"+newList);
		return newList;
	}
	
	private void parse(int pid,String s){
		//根分类的pid为0
		for(int i=0;i<oldList.size();i++){
			GoodsType c = (GoodsType) oldList.get(i);
		
			if(c.getPid()==pid){
				c.setTypename(s+c.getTypename());
				System.out.println("name:"+c.getTypename());
				newList.add(c);
				parse(c.getId(),s+"&nbsp;&nbsp;");
			}
		}
	}
}
