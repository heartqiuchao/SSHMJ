package com.action;

import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionSupport;
import com.service.ECharService;

@SuppressWarnings("serial")
public class TestEChartAction extends ActionSupport{
	
	@Autowired
	ECharService echarService;
	
	@Override
	public String execute() throws Exception {
		System.out.println("coming in execute....");
		return "testSuccess";
	}

	public String testEChart() {
		System.out.println("coming in testEChart...");
		return "testEChart";
	}
}
