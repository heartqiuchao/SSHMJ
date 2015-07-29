package com.test;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.orm.SystemUser;
import com.service.UserService;

@SuppressWarnings("resource")
public class TestHibernate {

	// @Autowired
	private UserService userService;

	/**
	 * 这个before方法在所有的测试方法之前执行，并且只执行一次 所有做Junit单元测试时一些初始化工作可以在这个方法里面进行
	 * 比如在before方法里面初始化ApplicationContext和userService
	 */
	@Before
	public void before() {
		ApplicationContext ac = new ClassPathXmlApplicationContext(
				new String[] { "classpath:spring-applicationContext.xml",
						"classpath:spring-applicationContext-datasource.xml" });
		userService = (UserService) ac.getBean("userService");
	}

	
	@Test
	public void testSaveMethod() {
		System.out.println("coming in testSaveMethod...");

		SystemUser systemUser = new SystemUser();

		systemUser.setId(20125133);
		systemUser.setName("wangyecheng");
		systemUser.setAge(21);

		userService.save(systemUser);

		System.out.println("end testSaveMethod...");
	}

	
/*	@Test
	public void testFindMethod() {
		System.out.println("coming in testFindMethod...");

		SystemUser systemUser = userService.findUserById("20125134");
		System.out.println("id:" + systemUser.getId());
		System.out.println("name:" + systemUser.getName());
		System.out.println("Age:" + systemUser.getAge());

		System.out.println("end testFindMethod...");
	}*/

/*	@Test
	public void testDeleteMethod() {
		System.out.println("coming in testDeleteMethod...");

		userService.deleteUserById("20125133");

		System.out.println("end testDeleteMethod...");
	}*/
	 
	/*@Test
	public void testUpdateMethod() {
		System.out.println("coming in testUpdateMethod...");

		SystemUser systemUser = new SystemUser();

		systemUser.setId(20125134);
		systemUser.setName("qiuchao");
		systemUser.setAge(21);

		userService.updateUser(systemUser);

		System.out.println("end testUpdateMethod...");
		
	}*/
}
