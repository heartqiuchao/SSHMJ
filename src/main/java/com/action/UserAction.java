package com.action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionSupport;
import com.orm.SystemRole;
import com.orm.SystemUser;
import com.service.SystemService;
import com.util.MD5Encode;

@SuppressWarnings("serial")
public class UserAction extends ActionSupport {
	
	@Autowired
	SystemService systemService;

	@Override
	public String execute() throws Exception {
		return ERROR;
	}

	public String manageUser() {
		return "manageUser";
	}

	public String addUser() {
		HttpServletRequest request = ServletActionContext.getRequest(); 
		System.err.println("用户名:"+request.getParameter("uername")+"|用户角色:"+request.getParameter("userrolename"));
		String accountName = request.getParameter("accountname");
		String userName= request.getParameter("username");
		String password= request.getParameter("password");
		String confirmPasswd= request.getParameter("confirmpasswd");
		String userAge= request.getParameter("userage");
		String userKey= request.getParameter("userkey");
		String userPhone= request.getParameter("userphone");
		String userSex= request.getParameter("usersex");
		String userRole= request.getParameter("userrolename");
		boolean flag =false;
		if (password.equals(confirmPasswd)&&!accountName.equals("")) {
			SystemUser user = new SystemUser();
			user.setAccount(accountName);
			user.setName(userName);
			user.setPassword(MD5Encode.passwordEncode(password));
			user.setUserage(Integer.parseInt(userAge));
			user.setUserkey(userKey);
			user.setUserphone(userPhone);
			user.setUsersex(userSex);
			user.setSystemrole((SystemRole) systemService.findById(SystemRole.class, userRole));
			user.setUserrolename(((SystemRole) systemService.findById(SystemRole.class, userRole)).getRolename());
			flag = systemService.save(user);
		}
		if (flag) {
			return "addSuccess";
		}else {
			return ERROR;
		}
	}

	public String listUser() {
		return "listAll";
	}
}
