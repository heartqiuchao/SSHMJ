package com.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.BaseDao;
import com.orm.SystemRole;
import com.orm.SystemUser;
import com.service.RoleService;

@Service("roleService")
public class RoleServiceImpl implements RoleService {
		
	@Autowired
	BaseDao baseDao;

	@Override
	public boolean save(SystemRole systemRole) {
		try {
			baseDao.save(systemRole);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	@Override
	public SystemRole findRoleById(String roleid) {
		return baseDao.findById(SystemUser.class, Integer.parseInt(roleid));
	}

	@Override
	public boolean deleteRoleById(String roleid) {
		try {
			baseDao.deleteById(SystemUser.class, Integer.parseInt(roleid));
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	@Override
	public boolean updateRole(SystemRole systemRole) {
		try {
			baseDao.update(systemRole);
			return true;
		} catch (Exception e) {
			return false;
		}
	}
	
	@Override
	public List<SystemRole> findAllRole() {
		return baseDao.findAll("SystemRole");
	}
	
}
