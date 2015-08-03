package com.orm;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@SuppressWarnings("serial")
@Entity
@Table(name = "SYSTEM_USER")
public class SystemUser implements Serializable{

	@Id
	@Column(name = "USERID", precision = 10, scale = 0)
	private Integer id;

	@Column(name = "USERNAME", nullable = false, length = 20)
	private String name;

	@Column(name = "USERACCOUNT", nullable = false, length = 50)
	private String account;

	@Column(name = "USERAGE", precision = 3, scale = 0)
	private Integer userage;

	@Column(name = "USERKEY", length = 18)
	private String userkey;

	@Column(name = "USERPHONE", length = 13)
	private String userphone;

	@Column(name = "USERSEX", length = 5)
	private String usersex;

	@Column(name = "PASSWORD", length = 100)
	private String password;

	@Column(name = "USERROLENAME", length = 20)
	private String userrolename;

	@ManyToOne(fetch = FetchType.EAGER, optional=true)
	@JoinColumn(name = "ROLE")
	private SystemRole systemrole;

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

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public Integer getUserage() {
		return userage;
	}

	public void setUserage(Integer userage) {
		this.userage = userage;
	}

	public String getUserkey() {
		return userkey;
	}

	public void setUserkey(String userkey) {
		this.userkey = userkey;
	}

	public String getUserphone() {
		return userphone;
	}

	public void setUserphone(String userphone) {
		this.userphone = userphone;
	}

	public String getUsersex() {
		return usersex;
	}

	public void setUsersex(String usersex) {
		this.usersex = usersex;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUserrolename() {
		return userrolename;
	}

	public void setUserrolename(String userrolename) {
		this.userrolename = userrolename;
	}

	public SystemRole getSystemrole() {
		return systemrole;
	}

	public void setSystemrole(SystemRole systemrole) {
		this.systemrole = systemrole;
	}

}
