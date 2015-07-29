package com.orm;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "USER_INFO")
public class SystemUser {

	@Id
	@Column(name = "USERID", precision = 10, scale = 0)
	private Integer id;

	@Column(name = "USERNAME", nullable = false, length = 20)
	private String name;

	@Column(name = "USERAGE")
	private int age;

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

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

}
