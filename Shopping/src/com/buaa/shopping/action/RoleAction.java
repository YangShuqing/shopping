package com.buaa.shopping.action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.nxf.frame.action.Action;

import com.buaa.shopping.bean.Role;
import com.buaa.shopping.service.RoleService;

public class RoleAction extends Action{
	
	private static final long serialVersionUID = -1850856786437228198L;

	public RoleAction(){
		setDir("jsp/role");
		setService(new RoleService("tbl_user_role","com.buaa.shopping.bean.Role"));
	}

	@Override
	public void save(HttpServletRequest request, HttpServletResponse response)
			throws IOException {
		// TODO Auto-generated method stub
		Role role = new Role();
		role.setRolename(request.getParameter("rolename"));
		service.save(role);
		super.save(request, response);
	}

}
