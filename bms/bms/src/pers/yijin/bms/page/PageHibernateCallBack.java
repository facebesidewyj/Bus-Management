package pers.yijin.bms.page;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;

/**
 * 用于分页的回调函数
 * 
 * @author wyj
 * 
 * @param <T>
 */
public class PageHibernateCallBack<T> implements HibernateCallback<List<T>> {
	private String hql;
	private Object[] params;
	private int startIndex;
	private int pageSize;

	// 链式调用
	public PageHibernateCallBack<T> setHql(String hql) {
		this.hql = hql;
		return this;
	}

	public PageHibernateCallBack<T> setParams(Object[] params) {
		this.params = params;
		return this;
	}

	public PageHibernateCallBack<T> setStartIndex(int startIndex) {
		this.startIndex = startIndex;
		return this;
	}

	public PageHibernateCallBack<T> setPageSize(int pageSize) {
		this.pageSize = pageSize;
		return this;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<T> doInHibernate(Session session) throws HibernateException,
			SQLException {
		// 获得query对象
		Query query = session.createQuery(hql);
		// 遍历多个参数
		if(params != null && params.length != 0){
			for (int i = 0; i < params.length; i++) {
				// 给query对象设置参数
				query.setParameter(i, params[i]);
			}
		}
		// 设置分页所用到的数据
		query.setFirstResult(startIndex);
		query.setMaxResults(pageSize);
		// 查询所有
		return query.list();
		
	}

}
