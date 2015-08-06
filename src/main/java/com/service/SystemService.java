package com.service;

import java.util.List;

public interface SystemService {
	/**
	 * save 
	 * @param <T>
	 */
	public <T> boolean save(T t);
	
	/**
	 * find  by id
	 * @param <T>
	 */
	public <T> T findById(Class<?> clazz, String id);
	
	/**
	 * find all 
	 * @param <T>
	 */
	public <T> List<T> findAll(String clazz);
	
	/**
	 * delete by id
	 */
	public boolean deleteById(Class<?> clazz,String id);
	
	/**
	 * update 
	 * @param <T>
	 */
	public <T> boolean update(T t);
}
