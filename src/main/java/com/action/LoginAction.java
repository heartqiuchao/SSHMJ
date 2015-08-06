package com.action;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.orm.SystemUser;
import com.service.SystemService;

@SuppressWarnings("serial")
public class LoginAction extends ActionSupport{
	
	@Autowired
	SystemService systemService;

	@Override
	public String execute() throws Exception {
		 ActionContext.getContext().getSession().clear();
		 Map<String, Object> mapSession = ActionContext.getContext().getSession();
		HttpServletRequest request = ServletActionContext.getRequest(); 
		String loginAccount = request.getParameter("username");
		String loginPasswd = request.getParameter("password");
		System.err.println("用户名:"+loginAccount+"|密码:"+loginPasswd);
		SystemUser loginUser=(SystemUser) systemService.findByAccount("SystemUser", loginAccount).get(0);
		if (loginAccount.equals("")||loginPasswd.equals("")) {
			return "loginPage";
		}
		if (loginUser!=null) {
			if (loginUser.getPassword().equals(loginPasswd)) {
				mapSession.put("loginuser", loginUser);	//在session中保存loginUser对象 
				return "loginSuccess";
			}
		}
		return "loginPage";
	}
	public String exit() {
		ActionContext.getContext().getSession().clear();
		return "exit";
	}
}
