package com.iceti.lobo.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.junit.Assert;
import org.junit.BeforeClass;
import org.junit.Test;

import com.iceti.lobo.model.Product;
import com.iceti.lobo.model.ProductType;

public class BaseDaoTest {
	
	protected static SessionFactory sessionFactory;
	protected static Session session;
	
	@BeforeClass
	public static void init(){
		Configuration configuration = new Configuration();
		configuration.addAnnotatedClass(Product.class)
			.addAnnotatedClass(ProductType.class);
		configuration.setProperty("hibernate.dialect", "org.hibernate.dialect.H2Dialect");
		configuration.setProperty("hibernate.connection.driver_class", "org.h2.Driver");
		configuration.setProperty("hibernate.connection.url", "jdbc:h2:mem");
		configuration.setProperty("hibernate.hbm2ddl.auto", "create");
		sessionFactory = configuration.buildSessionFactory();
		session = sessionFactory.openSession();
	}

	@Test
	public void test_01(){

		ProductType productType = new ProductType();
		productType.setDescription("TIPO PRODUCTO 01");
		
		session.save(productType);
		
		Product product = new Product();
		product.setDescription("Producto 01");
		product.setProductType(productType);
		
		session.save(product);
		
		productType.addProduct(product);
		session.save(productType);
		
		Product result = (Product) session.load(Product.class, 1L);
		
		Assert.assertTrue(result != null);
		
	}
}
