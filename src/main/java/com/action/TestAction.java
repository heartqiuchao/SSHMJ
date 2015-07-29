package com.action;

import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionSupport;
import com.service.UserService;

@SuppressWarnings("serial")
public class TestAction extends ActionSupport{
	
	@Autowired
	UserService userService;
	
	@Override
	public String execute() throws Exception {
		System.out.println("coming in execute....");
		return "testSuccess";
	}

	public String test() {
		System.out.println("coming in testAction...");
		userService.test();
		return "testSuccess";
	}
}
