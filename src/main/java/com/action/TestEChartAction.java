package com.action;

import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.ActionSupport;
import com.orm.ECharData;
import com.service.ECharService;

@SuppressWarnings("serial")
public class TestEChartAction extends ActionSupport{
	
	@Autowired
	ECharService echarService;
	
	@Override
	public String execute(){
		System.out.println("coming in execute....");
		return ERROR;
	}
	public String index() {
		System.out.println("coming in index...");
		return SUCCESS;
	}
	public String main() {
		System.out.println("coming main...");
		return SUCCESS;
	}
	public String addEchart() {
		System.out.println("coming addEchart...");
		return SUCCESS;
	}
	public void addEchartData () {
		System.out.println("coming addEchartData...");
		ECharData echarData =new ECharData();
		echarData.setId(1009);
		echarData.setName("泳衣");
		echarData.setNum(36);
		try {
			echarService.save(echarData);
		} catch (Exception e) {
			System.err.println("add error!");
		}
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
