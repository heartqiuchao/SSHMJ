package com.service;

import java.util.List;

public interface CommonService {
	/**
	 * @param find entity
	 */
	public <T> List<T> findData(String entity);
}
