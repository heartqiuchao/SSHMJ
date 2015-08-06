package com.action;

import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionSupport;
import com.service.SystemService;

@SuppressWarnings("serial")
public class MenuAction extends ActionSupport{
		
	@Autowired
	SystemService systemService;
	
}
