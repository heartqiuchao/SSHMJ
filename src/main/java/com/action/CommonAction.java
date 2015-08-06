package com.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.opensymphony.xwork2.ActionSupport;
import com.service.CommonService;

@SuppressWarnings("serial")
public class CommonAction extends ActionSupport{
	
	@Autowired
	CommonService commonService;
	
	@Override
    public String execute() throws Exception {
		System.err.println("coming in commonAction execute...");
        return ERROR;
    }
	
	public <T> void readData() {
		System.err.println("coming in commonAction readData...");
		HttpServletRequest request = ServletActionContext.getRequest(); 
		HttpServletResponse response=ServletActionContext.getResponse();
		String entity=request.getParameter("entity");
		List<T> datalist = commonService.findData(entity);
		/*
		//测试数据读取成功
		for(ECharData echarData:datalist){
			System.out.println("------------------------");
			System.out.println("id:" + echarData.getId());
			System.out.println("name:" + echarData.getName());
			System.out.println("num:" + echarData.getNum());
			System.out.println("------------------------");
		}*/
		
		String jsonText = JSON.toJSONString(datalist, true);
		JSONArray json = JSONArray.parseArray(jsonText);
		System.err.println(json.toString());	//调试
		
		//返回给前端页面
		response.setContentType("text/html; charset=utf-8");//设置返回时的编码格式
		try {
			response.getWriter().write(jsonText);
		} catch (IOException e) {
			System.err.println("json write error");
		}
		return;
	}
}
