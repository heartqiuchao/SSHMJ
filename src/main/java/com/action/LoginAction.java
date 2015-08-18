package com.action;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.orm.SystemUser;
import com.service.SystemService;
import com.util.MD5Encode;

@SuppressWarnings("serial")
public class LoginAction extends ActionSupport{
	private String username;
	private String password;
	@Autowired
	SystemService systemService;

	@Override
	public String execute() throws Exception {
		 ActionContext.getContext().getSession().clear();
		 Map<String, Object> mapSession = ActionContext.getContext().getSession();
		System.err.println("用户名:"+username+"|密码:"+password);
		SystemUser loginUser=(SystemUser) systemService.findByAccount("SystemUser", username).get(0);
		if (username.equals("")||password.equals("")) {
			return "loginPage";
		}
		if (loginUser!=null) {
			if (loginUser.getPassword().equals(MD5Encode.passwordEncode(password))) {
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
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
}
