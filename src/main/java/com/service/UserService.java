package com.service;

import com.orm.SystemUser;

/**
 * @author Qiuchao
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
	 * delete user by id
	 */
	public boolean deleteUserById(String userid);
	
	/**
	 * update user
	 */
	public boolean updateUser(SystemUser systemUser);
}
