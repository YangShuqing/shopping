package com.buaa.shopping.action;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.jms.Session;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.nxf.frame.action.Action;

import com.buaa.shopping.bean.Car;
import com.buaa.shopping.bean.Goods;
import com.buaa.shopping.bean.Order;
import com.buaa.shopping.bean.OrderDetail;
import com.buaa.shopping.bean.User;
import com.buaa.shopping.service.CarService;
import com.buaa.shopping.service.GoodsService;
import com.buaa.shopping.service.OrderDetailService;
import com.buaa.shopping.service.OrderService;
import com.buaa.shopping.service.UserService;

@SuppressWarnings("all")
public class OrderAction extends Action {

	private OrderService orderService;
	private UserService userService = new UserService("tbl_user", "com.buaa.shopping.bean.User");
	private CarService carService  = new CarService("tbl_goods_car","com.buaa.shopping.bean.Car");
	private GoodsService goodsService = new GoodsService("tbl_goods","com.buaa.shopping.bean.Goods");
	private OrderDetailService orderDetailService = new OrderDetailService("tbl_orderdetail", "com.buaa.shopping.bean.OrderDetail");

	public OrderAction() {
		orderService = new OrderService("tbl_order", "com.buaa.shopping.bean.Order");
		this.setService(orderService);

	}
	public void userOrder(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		User u = (User) request.getSession().getAttribute("user");
		if(u==null){
			response.sendRedirect("user.do?a=login");
			return;
		}
		
		List<Order> list =orderService.queryOrderByUser(u);
		request.setAttribute("olist", list);
		request.getRequestDispatcher("jsp/order/userOrder.jsp").forward(request, response);
	}
	
	public void orderDetail(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println(request.getParameter("oid"));
		int orderid =Integer.parseInt(request.getParameter("oid"));
		List<OrderDetail> odlist =(List<OrderDetail>) orderDetailService.queryByOrderId(orderid);
		System.out.println(odlist);
	
		Order order =  (Order) orderService.getById((long) orderid).get(0);
		request.setAttribute("order", order);
		request.setAttribute("odlist", odlist);
		request.getRequestDispatcher("jsp/order/orderDetail.jsp").forward(request, response);
	}
	
	public void chkorder(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//获取信息存入order表
		Order order = new Order();
		User u = (User) request.getSession().getAttribute("user");
		Integer uid = u.getId();
		order.setUid(uid);
		order.setStatus("0");
		order.setGid(1);
		Date date =new Date();
		order.setBuytime(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(date));
		String time = new SimpleDateFormat("yyMMddhhmmss").format(date);
		
		//生成订单号 时间+用户id 如151230 1647 01  
		String ordernum = time + uid;
		
		order.setOrdernum(ordernum);
		order.setTotal((float) 1000.0);
		System.out.println(order);
		orderService.save(order);
		
		int orderid = orderService.queryByOrderNum(ordernum).getId();
		//获取商品信息存入 orderdetail表
		ArrayList<Car> al =(ArrayList<Car>) request.getSession().getAttribute("shopcar");
		
		
		for (int i = 0; i < al.size(); i++) {
			OrderDetail od = new OrderDetail();
			Car car =al.get(i);
			od.setOrdernum(ordernum);
			od.setOrderid(orderid);
			od.setGid(car.getGid());
			od.setGname(car.getGname());
			od.setGpic(car.getGoodspic());
			od.setGprice(car.getPrice());
			od.setGtotal(car.getBuytotal());
			orderDetailService.save(od);
			//数据库中删除购物车表中的商品
			carService.delete(car.getId());
		}
		
		//session中清空购物车
		request.getSession().removeAttribute("shopcar");
		
		List<Order> oList = orderService.queryOrderByUser(u);
		request.setAttribute("olist", oList);
		request.getRequestDispatcher("jsp/order/userOrder.jsp").forward(request, response);
	}

	public void chkorder1(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String ids = request.getParameter("ids");
		String[] id = ids.split(",");
		for (String s : id) {
			System.out.println(s);
		}
		Order order = new Order();
		User u = (User) request.getSession().getAttribute("user");
		Integer uid = u.getId();
		order.setUid(uid);
		order.setStatus("");
		order.setTotal((float) 1);
		
		order.setBuytime(new SimpleDateFormat("yyyy-MM-dd hh:mm:ss").format(new Date()));

		for (int i = 0; i < id.length; i++) {
			order.setGid(Integer.parseInt(id[i]));
			orderService.save(order);
		}
	}
	
	
	public void chko(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int oid = Integer.parseInt(request.getParameter("id"));
		Order o = (Order) orderService.getOne(oid);
		
		User u = (User) userService.getOne(o.getUid());
		
		Goods g = (Goods) goodsService.getOne(o.getGid());
		
		request.setAttribute("user", u);
		request.setAttribute("goods", g);
		request.setAttribute("order", o);
		
		request.getRequestDispatcher("jsp/order/view.jsp").forward(request, response);
	}
	
	public void status(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		Order o = (Order) orderService.getOne(id);
		o.setStatus("1");
		orderService.update(o);
		response.sendRedirect("admin.do?a=orderlist");
	}
	
	public void confirmOrder(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.getRequestDispatcher("jsp/order/confirm1.jsp").forward(request, response);
		
	} 
};
