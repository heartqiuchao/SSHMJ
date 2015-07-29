package com.test;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.service.UserService;

@SuppressWarnings("resource")
public class TestSpring {
	
	
	@Test
	public void testUnit() {
		//通过spring.xml配置文件创建Spring的应用程序上下文环境
		ApplicationContext ac = new ClassPathXmlApplicationContext(
				new String[] { "classpath:spring-applicationContext.xml",
						"classpath:spring-applicationContext-datasource.xml" });
		//从Spring的IOC容器中获取bean对象
		UserService userService = (UserService) ac.getBean("userService");
		//执行测试方法
		userService.test();
	}
}
