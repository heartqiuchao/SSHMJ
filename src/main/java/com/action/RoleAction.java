package com.action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionSupport;
import com.orm.SystemRole;
import com.service.SystemService;

@SuppressWarnings("serial")
public class RoleAction extends ActionSupport{
	
	@Autowired
	SystemService  systemService;
	
	@Override
	public String execute() throws Exception {
		return ERROR;
	}

	public String manageRole() {
		return "manageRole";
	}
	
	public String addRole() {
		HttpServletRequest request = ServletActionContext.getRequest(); 
		System.err.println("角色ID:"+request.getParameter("roleid")+"|角色名称:"+request.getParameter("rolename"));
		SystemRole role = new SystemRole();
		role.setRolename(request.getParameter("rolename"));
		role.setId(Integer.parseInt(request.getParameter("roleid")));
		boolean flag = systemService.save(role);
		if (flag) {
			return "addSuccess";
		}else {
			return ERROR;
		}
	}
	
	public String listRole() {
		return "listAll";
	}
	
}
