package com.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.BaseDao;
import com.orm.ECharData;
import com.service.ECharService;

@Service("echarService")
public class ECharServiceImpl implements ECharService{

	@Autowired
	BaseDao baseDao;
	
	@Override
	public boolean save(ECharData echarData) {
		try {
			baseDao.save(echarData);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	@Override
	public ECharData findECharById(String echarId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ECharData> findAllEChar() {
		return baseDao.findAll("ECharData");
	}

	@Override
	public boolean deleteECharById(String echarId) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean updateEChar(ECharData echarData) {
		// TODO Auto-generated method stub
		return false;
	}

}
