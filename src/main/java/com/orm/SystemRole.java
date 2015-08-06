package com.orm;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@SuppressWarnings("serial")
@Entity
@SequenceGenerator(name = "SeqGenRole", sequenceName = "systemrole_sequence")
@Table(name = "SYSTEM_ROLE")
public class SystemRole implements Serializable {

	@Id
	@GeneratedValue(generator = "SeqGenRole")
	@Column(name = "ID", precision = 22, scale = 0)
	private Integer id;

	@Column(name = "ROLENAME", nullable = false, length = 20)
	private String rolename;

	@OneToMany(targetEntity = SystemUser.class, cascade = CascadeType.REMOVE, fetch = FetchType.EAGER, mappedBy = "systemrole")
	private Set<SystemUser> systemusers;

	@ManyToMany(targetEntity = SystemMenu.class, cascade = CascadeType.REMOVE, fetch = FetchType.EAGER, mappedBy = "systemroles")
	private Set<SystemMenu> systemmenus;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getRolename() {
		return rolename;
	}

	public void setRolename(String rolename) {
		this.rolename = rolename;
	}

	public Set<SystemUser> getSystemusers() {
		return systemusers;
	}

	public void setSystemusers(Set<SystemUser> systemusers) {
		this.systemusers = systemusers;
	}

	public Set<SystemMenu> getSystemmenus() {
		return systemmenus;
	}

	public void setSystemmenus(Set<SystemMenu> systemmenus) {
		this.systemmenus = systemmenus;
	}

}
