package com.buaa.shopping.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.nxf.frame.action.Action;

import com.buaa.shopping.bean.User;
import com.buaa.shopping.bean.UserRole;
import com.buaa.shopping.dao.UserRoleDAO;
import com.buaa.shopping.service.RoleService;
import com.buaa.shopping.service.UserRoleService;
import com.buaa.shopping.service.UserService;

public class UserAction extends Action {

	private static final long serialVersionUID = 1L;

	private RoleService roleService;
	private UserService userService = new UserService("tbl_user", "com.buaa.shopping.bean.User");

	public UserAction() {
		setDir("jsp/user");
		setService(new UserService("tbl_user", "com.buaa.shopping.bean.User"));
		roleService = new RoleService("tbl_user_role", "com.buaa.shopping.bean.Role");
	}

	public void reg(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		List<?> list = roleService.getAll();
		request.setAttribute("roleList", list);
		request.getRequestDispatcher("jsp/user/reg.jsp").forward(request, response);
	}
	
	public void add(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		List<?> list = roleService.getAll();
		request.setAttribute("roleList", list);
		System.out.println("role："+list);
		request.getRequestDispatcher("jsp/admin/user/add.jsp").forward(request, response);
	}

	public void save(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		User user = new User();
		user.setUsername(request.getParameter("username"));
		user.setPassword(request.getParameter("password"));
		String roleString = request.getParameter("role")!=null?request.getParameter("role"):"0";
		user.setRole(Integer.parseInt(roleString));
		
		user.setAddress(request.getParameter("address"));
		user.setRealname(request.getParameter("realname"));
		user.setTel(request.getParameter("tel"));
		
		service.save(user);

		response.sendRedirect("goods.do");
	}

	@Override
	public void list(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		UserRoleDAO dao = new UserRoleDAO();
		UserRoleService urs = new UserRoleService(dao);
		List<UserRole> list = (List<UserRole>) urs.select();
		System.out.println("user:"+list);
		request.setAttribute("userList", list);

		request.getRequestDispatcher("jsp/admin/user/list.jsp").forward(request, response);
	}

	public void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("jsp/user/login.jsp").forward(request, response);
	}

	public void checklogin(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		String verifycode = request.getParameter("verify");
		String sessionVC = (String) session.getAttribute("VerifyCode");
		
		if (sessionVC != verifycode) {
			session.setAttribute("errMsg", "验证码错误");
			response.sendRedirect("user.do?a=login");
			return ;
		}

		String username = request.getParameter("username");
		String password = request.getParameter("password");

		User user = userService.checkLogin(username, password);
		if (user != null) {
			session.setAttribute("user", user);
			response.sendRedirect("goods.do");
		} else {
			session.setAttribute("errMsg", "用户名或密码错误");
			response.sendRedirect("user.do?a=login");
		}

	}
	
	public void exit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getSession().removeAttribute("user");
		request.getSession().removeAttribute("shopcar");
		response.sendRedirect("goods.do");
	}
	
};
