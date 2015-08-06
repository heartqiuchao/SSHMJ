package com.service;

import java.util.List;

import com.orm.SystemMenu;

public interface MenuService {
	/**
	 * save menu
	 */
	public boolean save(SystemMenu systemMenu);
	
	/**
	 * find menu by id
	 */
	public SystemMenu findMenuById(String menuid);
	
	/**
	 * delete menu by id
	 */
	public boolean deleteMenuById(String menuid);
	
	/**
	 * update menu
	 */
	public boolean updatemenu(SystemMenu systemMenu);
	
	/**
	 * find all menu
	 */
	public List<SystemMenu> findAllMenu();
}
