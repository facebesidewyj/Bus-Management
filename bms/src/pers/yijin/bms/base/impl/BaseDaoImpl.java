package pers.yijin.bms.base.impl;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import pers.yijin.bms.base.BaseDao;
import pers.yijin.bms.page.PageHibernateCallBack;

public class BaseDaoImpl<T> extends HibernateDaoSupport implements BaseDao<T> {

	private Class<?> beanClass;

	//泛型<T>在编译时是无类型的，只是变量，T只有在运行以后才可以获得具体类型，子类被new时，父类的构造方法会执行
	public BaseDaoImpl() {
		//ParameterizedType是被参数化了的类型，例如：BaseDaoImpl<CrmClasses>
		ParameterizedType parameterizedType = (ParameterizedType) this
				.getClass().getGenericSuperclass();
		//getActualTypeArguments()获得所有实际参数值，就是泛型的类型，一般情况下为1个。返回类型为.class的字节码文件
		beanClass = (Class<?>) parameterizedType.getActualTypeArguments()[0];
	}

	@Override
	public void save(T t) {
		this.getHibernateTemplate().save(t);
	}

	@Override
	public void delete(T t) {
		this.getHibernateTemplate().delete(t);
		this.getHibernateTemplate().flush();
	}

	@Override
	public void update(T t) {
		this.getHibernateTemplate().update(t);
		this.getHibernateTemplate().flush();
	}

	@SuppressWarnings("unchecked")
	@Override
	public T findById(Serializable id) {
		return (T) this.getHibernateTemplate().get(beanClass, id);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<T> findAll() {
		// getName()获得全限定名
		return this.getHibernateTemplate().find("from " + beanClass.getName());
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<T> findAllByCondition(String condition, Object[] params) {
		String hql = "from " + beanClass.getName() + " where 1 = 1 "
				+ condition;
		return this.getHibernateTemplate().find(hql, params);
	}

	@Override
	public List<T> findAllByPage(String condition, Object[] params,
			int startIndex, int pageSize) {
		String hql = "from " + beanClass.getName() + " where 1 = 1 "
				+ condition;
		return this.getHibernateTemplate().execute(
				new PageHibernateCallBack<T>().setHql(hql).setParams(params)
						.setStartIndex(startIndex).setPageSize(pageSize));
	}

	@SuppressWarnings("unchecked")
	@Override
	public int getTotalRecord(String condition, Object[] params) {
		String hql = "select count(c) from " + beanClass.getName()
				+ " as c where 1 = 1 " + condition;
		List<Long> list = this.getHibernateTemplate().find(hql, params);
		return list.get(0).intValue();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<T> findAllByQBC(DetachedCriteria criteria) {
		return this.getHibernateTemplate().findByCriteria(criteria);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<T> findAllByPage(DetachedCriteria criteria, int startIndex,
			int pageSize) {
		return this.getHibernateTemplate().findByCriteria(criteria, startIndex,
				pageSize);
	}

	@Override
	public void saveOrUpdate(T t) {
		this.getHibernateTemplate().saveOrUpdate(t);
	}
	
}
