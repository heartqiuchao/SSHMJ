package com.service;

import java.util.List;
/**
 * @author 秋草
 */
public interface CommonService {
	/**
	 * @param find entity
	 */
	public <T> List<T> findData(String entity);
}
