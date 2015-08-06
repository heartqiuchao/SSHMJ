package com.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.BaseDao;
import com.orm.SystemUser;
import com.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService{
	
	@Autowired
	BaseDao baseDao;
	
	public void test() {
		System.out.println("Coming in service...");
	}

	public boolean save(SystemUser systemUser) {
		try {
			baseDao.save(systemUser);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	@Override
	public SystemUser findUserById(String userid) {
		return baseDao.findById(SystemUser.class, Integer.parseInt(userid));
	}

	@Override
	public boolean deleteUserById(String userid) {
		try {
			baseDao.deleteById(SystemUser.class, Integer.parseInt(userid));
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	@Override
	public boolean updateUser(SystemUser systemUser) {
		try {
			baseDao.update(systemUser);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	@Override
	public List<SystemUser> findAllUser() {
		return baseDao.findAll("SystemUser");
	}

	@Override
	public SystemUser findUserByName(String userName) {
		return (SystemUser) baseDao.findByName("SystemUser", userName);
	}
}
