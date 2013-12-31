package com.iceti.lobo.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.google.common.collect.Lists;

@Entity
@Table(name = "PRODUCT_TYPE")
public class ProductType extends Identificable {

	private static final long serialVersionUID = 1L;
	
	@Column(name = "DESCRIPTION", length = 100)
	private String description;

	@OneToMany(cascade = CascadeType.ALL, mappedBy = "productType")
	private List<Product> products = Lists.newArrayList();
	
	/**
	 * @return the description
	 */
	public String getDescription() {
		return description;
	}

	/**
	 * @param description the description to set
	 */
	public void setDescription(String description) {
		this.description = description;
	}

	/**
	 * @return the products
	 */
	public List<Product> getProducts() {
		return products;
	}

	/**
	 * @param products the products to set
	 */
	public void setProducts(List<Product> products) {
		this.products = products;
	}

	public boolean addProduct(Product product){
		if(product == null){
			return false;
		}

		return this.products.add(product);
	}
	
}
