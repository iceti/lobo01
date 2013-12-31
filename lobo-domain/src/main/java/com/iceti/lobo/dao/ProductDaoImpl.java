package com.iceti.lobo.dao;

import org.springframework.stereotype.Repository;

import com.iceti.lobo.model.Product;

@Repository
public class ProductDaoImpl extends BaseDaoImpl<Product> implements ProductDao {

	@Override
	protected Class<Product> getEntityClass() {
		return Product.class;
	}

}
