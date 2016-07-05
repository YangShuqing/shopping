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
import com.buaa.shopping.bean.User;
import com.buaa.shopping.service.CarService;
import com.buaa.shopping.service.GoodsService;
import com.buaa.shopping.service.GoodsTypeService;


@SuppressWarnings("all")
public class GoodsAction extends Action {

	private static final long serialVersionUID = 1L;

	private GoodsTypeService gts = new GoodsTypeService("tbl_goods_type", "com.buaa.shopping.bean.GoodsType");

	private GoodsService goodService;
	
	ArrayList<Car> al = null;

	private CarService carService;

	public GoodsAction() {
		carService  = new CarService("tbl_goods_car","com.buaa.shopping.bean.Car");
		goodService = new GoodsService("tbl_goods", "com.buaa.shopping.bean.Goods");
		this.setService(goodService);
		this.setDir("jsp/goods");
	}

	@Override
	public void index(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		for(int i=0;i<5;i++){
			List<?> list = goodService.getByType(i+1);
			request.setAttribute("list"+i, list);
		}
		
		User u = (User) request.getSession().getAttribute("user");
		List carList = (List) request.getSession().getAttribute("shopcar");
		if(u!=null && carList == null){
			Integer id = u.getId();//获取用户id
			ArrayList<Car> list = (ArrayList<Car>) carService.getByUid(id);
			//把购物车添加到session里面
			request.getSession().setAttribute("shopcar", list);
			
		}
		
		request.getRequestDispatcher("index.jsp").forward(request,response);
	}

	public void add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<?> list = gts.parseCategory();
	
		System.out.println(list);
		request.setAttribute("list", list);
		request.getRequestDispatcher("jsp/admin/goods/add.jsp").forward(request, response);
	}

	@Override
	public void save(HttpServletRequest request, HttpServletResponse response) throws IOException {
		Goods goods = new Goods();
		//获取图片，并分割  接到的格式	,地址1,地址2
		String pic =request.getParameter("goodspic");
		String[] pics = pic.substring(1).split(",");
		goods.setGoodspic(pics[0]!=null?pics[0]:"");
		goods.setGoodspic1(pics[1]!=null?pics[1]:"");
		goods.setGoodspic2(pics[2]!=null?pics[2]:"");
		goods.setGoodspic3(pics[3]!=null?pics[3]:"");
		
		
		goods.setGoodsname(request.getParameter("goodsname"));
		goods.setGoodstype(Integer.parseInt(request.getParameter("goodstype")));
		goods.setPrice(Float.parseFloat(request.getParameter("price")));
		goods.setGoodstitle(request.getParameter("goodstitle"));
		goods.setCount((Integer.parseInt(request.getParameter("goodscount"))));
		goods.setGoodsdesc(request.getParameter("goodsdesc"));
		service.save(goods);
		response.sendRedirect("admin.do?a=goodsList");	
	}
	
	public void show(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		List<?> list = service.getById((long)Integer.parseInt(id));
		request.setAttribute("goods" ,list.get(0));
		request.getRequestDispatcher("jsp/goods/show.jsp").forward(request,response);
	}
	
	
	public void typeList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		List<?> list = this.goodService.getByType(Integer.parseInt(id));
		request.setAttribute("goods" ,list);
		System.out.println(list);
		request.getRequestDispatcher("jsp/goods/list.jsp").forward(request,response);
	}
	
	
	public void list(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<?> list = this.goodService.getAll();
		request.setAttribute("goods" ,list);
		System.out.println(list);
		request.getRequestDispatcher("jsp/goods/list.jsp").forward(request,response);
	}
	
	
	public void addcar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//获取session
		HttpSession session = request.getSession();
		//获取已登录的用户
		User currentUser = (User)session.getAttribute("user");
		
		//如果你没有登录就跳到登录界面
		if(currentUser==null){
			response.sendRedirect("user.do?a=login");
		}
		//创建一个购物车类
		Car car = new Car();
		car.setUid(currentUser.getId());
		//获取页面传递过来的商品id
		int gid = Integer.parseInt(request.getParameter("id"));
		car.setGid(gid);
		car.setBuytotal(1);//购买数量
		//添加购买时间，是获取的系统时间
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		car.setBuytime(sdf.format(new Date()));
		
	
		//获取商品名称并存到购物车对象里面
//		String gname =new String(request.getParameter("gname").getBytes("ISO-8859-1"),"UTF-8");
//		car.setGname(gname);
//		System.out.println(gname);
//		System.out.println(URLDecoder.decode(car.getGname(),"UTF-8"));
		
		//获取商品属性，并存到购物车对象里面
		Goods g = (Goods) goodService.getById((long) gid).get(0);
		car.setGname(g.getGoodsname());
		car.setGoodspic(g.getGoodspic());
		car.setPrice(g.getPrice()); 
		
		//因为购物车存放多个商品所以使用集合类,去获取session里面的数据。
		al = (ArrayList<Car>)session.getAttribute("shopcar");
		
		//如果session里面没有数据的时候就创建一个新的购物车集合
		if(al==null){
			al= new ArrayList<Car>();
		}
		//把商品添加到购物车集合里面
		al.add(car);
		//把购物车集合添加到session
		session.setAttribute("shopcar", al);
		//并把商品添加到数据库的购物车表里面
		carService.save(car);
		//跳转到查看购物车模块
		response.sendRedirect("goods.do?a=showcar");
	}
	
	public void showcar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//获取登陆用户信息
		User u = (User) request.getSession().getAttribute("user");
		//如果没登陆就跳转到登陆页面
		if(u==null){
			response.sendRedirect("user.do?a=login");
			return;
		}
		Integer id = u.getId();//获取用户id
		
		//根据已登录的用户id去查找数据库购物车表 
		ArrayList<Car> list = (ArrayList<Car>) carService.getByUid(id);
		//把购物车添加到session里面
		request.getSession().setAttribute("shopcar", list);

		request.getRequestDispatcher("jsp/goods/showcar.jsp").forward(request, response);
		//response.sendRedirect("jsp/goods/showcar.jsp");
	}
	public void delcar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int count = Integer.parseInt(request.getParameter("count"));
		//从session中取得购物车的列表
		HttpSession session = request.getSession();
		ArrayList<Car> al = (ArrayList<Car>) session.getAttribute("shopcar");
		//取得要删除的对象，列表中移除，重新封装列表
		
//		List<?> list = carService.getById((long) count);
//		System.out.println(list+"list");
//		
//		Car car = (Car) list.get(0);
//		System.out.println(car);
		
		Car car = al.get(count-1);
		System.out.println(car.getId());
		carService.delete(car.getId());
		
		al.remove(count-1);
		session.setAttribute("shopcar", al);
		//跳转到查看购物车模块
		request.getRequestDispatcher("jsp/goods/showcar.jsp").forward(request, response);
	}
};
