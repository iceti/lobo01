package com.iceti.lobo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iceti.lobo.dao.ProductDao;
import com.iceti.lobo.model.Product;

@Service
public class ProductServiceImpl extends BasicServiceImpl<Product> implements ProductService {

	@Autowired
	private ProductDao productoDao;

	@Override
	public List<Product> searchAll() {
		return this.productoDao.findAll();
	}

	@Override
	public boolean saveOrUpdate(Product stock) {
		return this.productoDao.saveOrUpdate(stock);
	}

}
