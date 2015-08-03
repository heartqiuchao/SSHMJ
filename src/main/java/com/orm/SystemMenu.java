package com.orm;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@SuppressWarnings("serial")
@Entity
@Table(name = "SYSTEM_MENU")
public class SystemMenu implements Serializable {

	@Id
	@Column(name = "ID", precision = 22, scale = 0)
	private Integer id;

	@Column(name = "MENUNAME", nullable = false, length = 50)
	private String menuname;

	@Column(name = "MENUURL", length = 200)
	private String menuurl;

	@Column(name = "PARENTID", precision = 22, scale = 0)
	private Integer parentid;

	@ManyToMany(targetEntity = SystemRole.class, cascade = CascadeType.REMOVE, fetch = FetchType.EAGER)
	private Set<SystemRole> systemroles;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getMenuname() {
		return menuname;
	}

	public void setMenuname(String menuname) {
		this.menuname = menuname;
	}

	public String getMenuurl() {
		return menuurl;
	}

	public void setMenuurl(String menuurl) {
		this.menuurl = menuurl;
	}

	public Integer getParentid() {
		return parentid;
	}

	public void setParentid(Integer parentid) {
		this.parentid = parentid;
	}

	public Set<SystemRole> getSystemroles() {
		return systemroles;
	}

	public void setSystemroles(Set<SystemRole> systemroles) {
		this.systemroles = systemroles;
	}

}
