package com.iceti.lobo.dao;

import java.util.List;

import org.hibernate.criterion.Criterion;

import com.iceti.lobo.model.Identificable;

public interface BaseDao<E extends Identificable> {

	E findById(Long id);
	
	boolean saveOrUpdate(E e);
	
	void delete(E e);
	
	List<E> findByCriteria(Criterion criterion);
	
	List<E> findAll();
	
}
