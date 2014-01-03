package com.iceti.lobo.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Criterion;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.iceti.lobo.model.Identificable;

@Transactional
public abstract class BaseDaoImpl<E extends Identificable> implements BaseDao<E> {

	@Autowired
	private SessionFactory sessionFactory;
	
	protected Session getCurrentSession(){
		return this.sessionFactory.getCurrentSession();
	}

	@SuppressWarnings("unchecked")
	@Override
    public E findById(Long id) {
        return (E) getCurrentSession().get(this.getEntityClass(), id);
    }
 
    @Override
    public boolean saveOrUpdate(E e) {
    	if(e == null){
    		return false;
    	}
        this.getCurrentSession().saveOrUpdate(e);
        
        return true;
    }
 
    @Override
    public void delete(E e) {
        getCurrentSession().delete(e);
    }
 
    @SuppressWarnings("unchecked")
	@Override
    public List<E> findByCriteria(Criterion criterion) {
        Criteria criteria = getCurrentSession().createCriteria(this.getEntityClass());
        criteria.add(criterion);
        
        return criteria.list();
    }
    
    protected abstract Class<E> getEntityClass();
    
    @SuppressWarnings("unchecked")
	@Override
    public List<E> findAll() {
    	Criteria criteria = getCurrentSession().createCriteria(this.getEntityClass());
        
        return criteria.list();
    }

    protected void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
    
}
