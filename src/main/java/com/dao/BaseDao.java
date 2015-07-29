package com.dao;

import java.io.Serializable;
import java.util.List;

public interface BaseDao {
	/**
	 * save
	 */
	public <T> void save(T t);

	/**
	 * find by id
	 */
	public <T> T findById(Class<?> clazz, Serializable id);

	/**
	 * find by hql
	 */
	public <T> T findObject(String hql);

	/**
	 * find by name
	 */
	public <T> List<T> findByName(String clazz, String name);

	/**
	 * find all
	 */
	public <T> List<T> findAll(String clazz);

	/**
	 * delete by id
	 */
	public void deleteById(Class<?> clazz, Serializable id);

	/**
	 * update
	 */
	public <T> void update(T t);

	/**
	 * query
	 */
	public <T> List<T> query(String hql);

}
