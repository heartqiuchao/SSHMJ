package com.service;

import java.util.List;

import com.orm.SystemRole;

/**
 * 
 * @author 秋草
 *
 */
public interface RoleService {
	/**
	 * save role
	 */
	public boolean save(SystemRole systemRole);
	
	/**
	 * find role by id
	 */
	public SystemRole findRoleById(String roleid);
	
	/**
	 * delete  role by id
	 */
	public boolean deleteRoleById(String  roleid);
	
	/**
	 * update  role
	 */
	public boolean updateRole(SystemRole systemRole);
	
	/**
	 * find all  role
	 */
	public List<SystemRole> findAllRole();
}
