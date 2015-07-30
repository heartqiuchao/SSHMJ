package com.orm;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="ECDATA")
public class ECharData {
	
	@Id
	@Column(name = "DATA_ID", precision = 10, scale = 0)
	private Integer id;
	
	@Column(name = "DATA_NAME", nullable = false, length = 20)
	private String name;
	
	@Column(name = "DATA_NUM", precision = 10, scale = 0)
	private Integer num;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getNum() {
		return num;
	}

	public void setNum(Integer num) {
		this.num = num;
	}
	
}
