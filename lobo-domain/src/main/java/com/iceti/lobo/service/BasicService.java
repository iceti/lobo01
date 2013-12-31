package com.iceti.lobo.service;

import java.util.List;

import com.iceti.lobo.model.Identificable;

public interface BasicService<T extends Identificable> {

	List<T> searchAll();
	
	boolean saveOrUpdate(T identificable);
}
