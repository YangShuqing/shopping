package com.buaa.shopping.action;

import java.io.IOException;
import java.net.URLDecoder;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.GroupLayout.Alignment;

import org.nxf.frame.action.Action;

import com.buaa.shopping.bean.Car;
import com.buaa.shopping.bean.DBCar;
import com.buaa.shopping.bean.Goods;
import com.buaa.shopping.bean.GoodsType;
import com.buaa.shopping.bean.User;
import com.buaa.shopping.service.CarService;
import com.buaa.shopping.service.GoodsService;
import com.buaa.shopping.service.GoodsTypeService;


@SuppressWarnings("all")
public class TypeAction extends Action {

	private static final long serialVersionUID = 1L;

	private GoodsTypeService gts = new GoodsTypeService("tbl_goods_type", "com.buaa.shopping.bean.GoodsType");


	public TypeAction() {
		this.setDir("jsp/goods");
	}

	public void add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<?> list = gts.parseCategory();
		request.setAttribute("list", list);
		request.getRequestDispatcher("jsp/admin/goods/addType.jsp").forward(request, response);
	}

	public void save1(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		GoodsType goodsType = new GoodsType();
		goodsType.setTypename(request.getParameter("typename"));
		goodsType.setPid(Integer.parseInt(request.getParameter("pid")));
		gts.save(goodsType);
		request.getRequestDispatcher("type.do?a=list").forward(request, response);
	}
	
	public void list(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<GoodsType> list =(List<GoodsType>) gts.getAll();
		request.setAttribute("typeList", list);
		request.getRequestDispatcher("jsp/admin/goods/typeList.jsp").forward(request, response);
	}
	
};
