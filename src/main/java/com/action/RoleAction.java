package com.action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;

import com.dao.BaseDao;
import com.opensymphony.xwork2.ActionSupport;
import com.orm.SystemRole;
import com.service.RoleService;
import com.service.SystemService;

@SuppressWarnings("serial")
public class RoleAction extends ActionSupport{
	
	@Autowired
	SystemService  systemService;
	@Autowired
	RoleService roleService;
	@Autowired
	BaseDao baseDao;
	
	public String manageRole() {
		return "manageRole";
	}
	
	public String addRole() {
		HttpServletRequest request = ServletActionContext.getRequest(); 
		System.err.println("角色ID:"+request.getParameter("roleid")+"|角色名称:"+request.getParameter("rolename"));
		SystemRole role = new SystemRole();
		role.setRolename(request.getParameter("rolename"));
		role.setId(Integer.parseInt(request.getParameter("roleid")));
		try {
			baseDao.save(role);
			return "addSuccess";
		} catch (Exception e) {
			return ERROR;
		}
	}
	
	public String listRole() {
		return "listAll";
	}
	
}
