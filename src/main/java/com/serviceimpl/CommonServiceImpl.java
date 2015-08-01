package com.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.BaseDao;
import com.service.CommonService;

@Service("commonService")
public class CommonServiceImpl implements CommonService{
	
	@Autowired
	BaseDao baseDao;
	
	@Override
	public <T> List<T> findData(String entity) {
		return baseDao.findAll(entity);
	}

}
