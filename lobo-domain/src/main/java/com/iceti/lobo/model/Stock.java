package com.iceti.lobo.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "STOCK")
public class Stock extends Identificable {

	private static final long serialVersionUID = 1L;

	@Column(name = "NAME", length = 100)
	private String name;
	
	@Column(name = "CODE", unique = true, nullable = false, length = 25)
	private String code;

	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * @return the code
	 */
	public String getCode() {
		return code;
	}

	/**
	 * @param code the code to set
	 */
	public void setCode(String code) {
		this.code = code;
	}

	@Override
	public String toString() {
		return "Stock [code=" + this.code + ", id=" + this.getId()
				+ ", name=" + this.name + "]";
	}
	
}
