package com.iceti.lobo.dao;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.iceti.lobo.model.Product;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:hibernate-db.xml")
public class ProductDaoTest {
	
	@Autowired
	private ProductDao target;

	@Test
	public void saveOrUpdate_ok(){
		Product product = new Product();
		product.setDescription("PRUEBA 01");
		boolean r = this.target.saveOrUpdate(product);
		Assert.assertTrue(r);
	}
	
}
