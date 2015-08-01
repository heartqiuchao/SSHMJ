package com.action;

import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionSupport;
import com.service.ECharService;

@SuppressWarnings("serial")
public class TestEChartAction extends ActionSupport{
	
	@Autowired
	ECharService echarService;
	
	@Override
	public String execute(){
		System.out.println("coming in execute....");
		return SUCCESS;
	}
	public String index() {
		System.out.println("coming in index...");
		return SUCCESS;
	}
	public String echart() {
		System.out.println("coming in testEChart...");
		return SUCCESS;
	}
	public String echartmap() {
		System.out.println("coming in testEChartMap...");
		return SUCCESS;
	}
}
