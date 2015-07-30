package com.service;


import java.util.List;

import com.orm.ECharData;

public interface ECharService {
	/**
	 * save ECharData
	 */
	public boolean save(ECharData echarData);
	
	/**
	 * find ECharData by id
	 */
	public ECharData findECharById(String echarId);
	
	/**
	 * find all ECharData
	 */
	public List<ECharData> findAllEChar();
	
	/**
	 * delete ECharData by id
	 */
	public boolean deleteECharById(String echarId);
	
	/**
	 * update ECharData
	 */
	public boolean updateEChar(ECharData echarData);
}
