package com.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.BaseDao;
import com.orm.SystemMenu;
import com.orm.SystemUser;
import com.service.MenuService;

@Service("menuService")
public class MenuServiceImpl implements MenuService{
	
	@Autowired
	BaseDao baseDao;

	@Override
	public boolean save(SystemMenu systemMenu) {
		try {
			baseDao.save(systemMenu);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	@Override
	public SystemMenu findMenuById(String menuid) {
		return baseDao.findById(SystemUser.class, Integer.parseInt(menuid));
	}

	@Override
	public boolean deleteMenuById(String menuid) {
		try {
			baseDao.deleteById(SystemUser.class, Integer.parseInt(menuid));
			return true;
		} catch (Exception e) {
			return false;
		}
		
	}

	@Override
	public boolean updatemenu(SystemMenu systemMenu) {
		try {
			baseDao.update(systemMenu);
			return true;
		} catch (Exception e) {
			return false;
		}
	}
	
	@Override
	public List<SystemMenu> findAllMenu() {
		return baseDao.findAll("SystemMenu");
	}

}
