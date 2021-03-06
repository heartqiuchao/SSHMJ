package com.test;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.orm.ECharData;
import com.orm.SystemRole;
import com.orm.SystemUser;
import com.service.ECharService;
import com.service.RoleService;
import com.service.SystemService;
import com.service.UserService;

@SuppressWarnings({ "resource", "unused" })
public class TestHibernate {

	
	private UserService userService;
	private ECharService echarService;
	private RoleService roleService;
	private SystemService systemService;

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
		echarService = (ECharService) ac.getBean("echarService");
		roleService = (RoleService)ac.getBean("roleService");
		systemService=(SystemService)ac.getBean("systemService");
	}

	
	/*@Test
	public void testSaveUserMethod() {
		System.out.println("coming in testSaveMethod...");

		SystemUser systemUser = new SystemUser();

		systemUser.setId(20125133);
		systemUser.setName("wangyecheng");
		systemUser.setAge(21);

		userService.save(systemUser);

		System.out.println("end testSaveMethod...");
	}*/

	/*@Test
	public void testSaveECharMethod() {
		System.out.println("coming in testSaveECharMethod...");

		ECharData eCharData = new ECharData();

		eCharData.setId(1008);
		eCharData.setName("皮鞋");
		eCharData.setNum(26);;

		echarService.save(eCharData);

		System.out.println("end testSaveECharMethod...");
	}
	*/
	/*@Test
	public void testSaveRoleMethod() {
		System.out.println("coming in testRoleECharMethod...");

		SystemRole role = new SystemRole();

		role.setId(2);
		role.setRolename("管理员");

		systemService.save(role);

		System.out.println("end testSaveRoleMethod...");
	}*/
	
	/*@Test
	public void testFindMethod() {
		System.out.println("coming in testFindMethod...");

		SystemUser systemUser = (SystemUser) systemService.findByAccount("SystemUser", "qiuchao").get(0);
		System.out.println("id:" + systemUser.getId());
		System.out.println("name:" + systemUser.getName());
		System.out.println("Age:" + systemUser.getAccount());

		System.out.println("end testFindMethod...");
	}
	*/
	
	@Test
	public void testHqlFindMethod() {
		System.out.println("coming in testFindMethod...");
		final String hqlString="from SystemUser,SystemRole where userrolename='超级管理员'";
	    
		System.out.println((Object)systemService.findHqlAll(hqlString).get(0));

		System.out.println("end testFindMethod...");
	}
	
	
	/*@Test
	public void testFindAllUserMethod() {
		System.out.println("coming in testFindAllUserMethod...");

		List<SystemUser> userlist = userService.findAllUser();
		for(SystemUser systemUser:userlist){
			System.out.println("------------------------");
			System.out.println("id:" + systemUser.getId());
			System.out.println("name:" + systemUser.getName());
			System.out.println("Age:" + systemUser.getAccount());
			System.out.println("------------------------");
		}
		
		System.out.println("end testFindAllUserMethod...");
	}*/
	
	/*@Test
	public void testFindAllECharMethod() {
		System.out.println("coming in testFindAllECharMethod...");

		List<ECharData> echarlist = echarService.findAllEChar();
		for(ECharData echarData:echarlist){
			System.out.println("------------------------");
			System.out.println("id:" + echarData.getId());
			System.out.println("name:" + echarData.getName());
			System.out.println("num:" + echarData.getNum());
			System.out.println("------------------------");
		}
		
		System.out.println("end testFindAllECharMethod...");
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
