package com.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.opensymphony.xwork2.ActionSupport;
import com.orm.ECharData;
import com.service.ECharService;

@SuppressWarnings("serial")
public class CommonAction extends ActionSupport{
	
	@Autowired
	ECharService echarService;
	
	@Override
    public String execute() throws Exception {
		System.err.println("coming in commonAction execute...");
        return "testSuccess";
    }
	
	public void readData() {
		System.err.println("coming in commonAction readData...");
//		HttpServletRequest request = ServletActionContext.getRequest(); 
		HttpServletResponse response=ServletActionContext.getResponse();
		
		List<ECharData> echarlist = echarService.findAllEChar();
		//测试数据读取成功
		for(ECharData echarData:echarlist){
			System.out.println("------------------------");
			System.out.println("id:" + echarData.getId());
			System.out.println("name:" + echarData.getName());
			System.out.println("num:" + echarData.getNum());
			System.out.println("------------------------");
		}
		
		String jsonText = JSON.toJSONString(echarlist, true);
		JSONArray json = JSONArray.parseArray(jsonText);
		System.err.println(json.toString());	//调试
		
		//返回给前端页面
//		response.setCharacterEncoding("UTF-8");	
		response.setContentType("text/html; charset=utf-8");//设置返回时的编码格式
		try {
			response.getWriter().write(jsonText);
		} catch (IOException e) {
			System.err.println("json write error");
		}
		/*try {
			PrintWriter out = response.getWriter();
			out.println(json);  
		    out.flush();  
		    out.close();   
		} catch (IOException e) {
			System.err.println("json write error");
		}  */
		return;
	}
}
