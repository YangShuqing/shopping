package com.buaa.shopping.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.nxf.frame.action.Action;

import com.buaa.shopping.bean.User;
import com.buaa.shopping.dao.GoodsAndTypeDAO;
import com.buaa.shopping.service.GoodsAndTypeService;
import com.buaa.shopping.service.OrderService;
import com.buaa.shopping.service.UserService;

public class AdminAction extends Action {

	private static final long serialVersionUID = 1L;

	private UserService userService = new UserService("tbl_user", "com.buaa.shopping.bean.User");
	private OrderService orderService = new OrderService("tbl_order","com.buaa.shopping.bean.Order");
	
	public AdminAction() {

	}

	public void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("jsp/admin/login.jsp").forward(request, response);
	}

	public void checklogin(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		String verifycode = request.getParameter("verify");
		String sessionVC = (String) session.getAttribute("VerifyCode");

		if (!verifycode.equals(sessionVC)) {
			session.setAttribute("errMsg", "验证码错误");
			response.sendRedirect("admin.do?a=login");
			return;
		}

		String username = request.getParameter("username");
		String password = request.getParameter("password");

		User user = userService.checkLogin(username, password);
		if (user != null) {

			if (user.getRole() == 1) {
				session.setAttribute("user", user);
				response.sendRedirect("jsp/admin/index.jsp");
			} else {
				session.setAttribute("errMsg", "用户名权限不够");
				response.sendRedirect("admin.do?a=login");
			}
		} else {
			session.setAttribute("errMsg", "用户名密码错误");
			response.sendRedirect("admin.do?a=login");
		}
	}
	
	public void goodsList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		GoodsAndTypeDAO dao = new GoodsAndTypeDAO();
		GoodsAndTypeService s = new GoodsAndTypeService(dao);
		List<?> list = s.getGT();
		request.setAttribute("list", list);
		request.getRequestDispatcher("jsp/goods/list.jsp").forward(request, response);
	}
	
	public void orderlist(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		List<?> list = orderService.getAll();
		request.setAttribute("orderlist", list);
		request.getRequestDispatcher("jsp/order/list.jsp").forward(request,response);
	}
}
