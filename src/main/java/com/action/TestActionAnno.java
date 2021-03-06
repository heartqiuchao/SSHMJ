package com.action;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionSupport;
import com.service.UserService;

@SuppressWarnings("serial")
@ParentPackage("basePackage")
@Action(value="testActionAnno")
@Namespace("/")
public class TestActionAnno extends ActionSupport{
	
	@Autowired
	UserService userService;
	
	@Override
	public String execute() throws Exception {
		System.out.println("coming in execute...");
		return "testSuccess";
	}

	public String test() {
		System.out.println("coming in testActionAnno...");
		userService.test();
		return "testSuccess";
	}
}
