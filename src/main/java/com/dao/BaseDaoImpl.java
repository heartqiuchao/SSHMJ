package com.dao;

import java.io.Serializable;
import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

@SuppressWarnings("unchecked")
@Repository("baseDao")
public class BaseDaoImpl implements BaseDao {

	@Autowired
	HibernateTemplate hibernateTemplate;

	@Override
	public <T> void save(T t) {
		hibernateTemplate.saveOrUpdate(t);
	}

	@Override
	public <T> T findById(Class<?> clazz, Serializable id) {
		return (T) hibernateTemplate.get(clazz, id);
	}

	@Override
	public <T> T findObject(String hql) {
		final String final_hql = hql;
		T t = null;
		List<T> list = hibernateTemplate
				.executeFind(new HibernateCallback<T>() {
					@Override
					public T doInHibernate(Session session)
							throws HibernateException, SQLException {
						Query query = session.createQuery(final_hql);
						return (T) query.list();
					}
				});
		if (list.size() > 1) {
			t = list.get(0);
		}
		return t;
	}

	@Override
	public <T> List<T> findByName(String clazz, String name) {
		return hibernateTemplate.find("from " + clazz + "as e where e.name="
				+ name);
	}

	@Override
	public <T> List<T> findAll(String clazz) {
		return hibernateTemplate.find("from " + clazz);
	}

	@Override
	public void deleteById(Class<?> clazz, Serializable id) {
		hibernateTemplate.delete(hibernateTemplate.load(clazz, id));
	}

	@Override
	public <T> void update(T t) {
		hibernateTemplate.update(t);
	}

	@Override
	public <T> List<T> query(String hql) {
		final String final_hql = hql;
		return hibernateTemplate.executeFind(new HibernateCallback<T>() {
			@Override
			public T doInHibernate(Session session) throws HibernateException,
					SQLException {
				Query query = session.createQuery(final_hql);
				return (T) query.list();
			}
		});
	}

}
