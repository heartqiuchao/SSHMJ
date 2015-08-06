package com.service;

import java.util.List;

import com.orm.SystemUser;

/**
 * @author 秋草
 */
public interface UserService {
	/**
	 * test
	 */
	public void test();
	
	/**
	 * save user
	 */
	public boolean save(SystemUser systemUser);
	
	/**
	 * find user by id
	 */
	public SystemUser findUserById(String userid);
	
	/**
	 * find user by name
	 */
	public SystemUser findUserByName(String userName);
	
	/**
	 * find all user
	 */
	public List<SystemUser> findAllUser();
	
	/**
	 * delete user by id
	 */
	public boolean deleteUserById(String userid);
	
	/**
	 * update user
	 */
	public boolean updateUser(SystemUser systemUser);
}
