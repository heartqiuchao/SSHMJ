package com.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.BaseDao;
import com.service.SystemService;

@Service("systemService")
public class SystemServiceImpl implements SystemService{
	
	@Autowired
	BaseDao baseDao;

	@Override
	public <T> boolean save(T t) {
		try {
			baseDao.save(t);
			return true;
		} catch (Exception e) {								
			return false;
		}
	}

	@Override
	public <T> T findById(Class<?> clazz, String id) {
		return baseDao.findById(clazz, Integer.parseInt(id));
	}

	@Override
	public <T> List<T> findAll(String clazz) {
		return baseDao.findAll(clazz);
	}

	@Override
	public boolean deleteById(Class<?> clazz, String id) {
		try {
			baseDao.deleteById(clazz, Integer.parseInt(id));
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	@Override
	public <T> boolean update(T t) {
		try {
			baseDao.update(t);
			return true;
		} catch (Exception e) {
			return false;
		}
	}
	
}
