package pers.yijin.bms.base;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;

public interface BaseDao<T> {
	/**
	 * 添加操作
	 * 
	 * @param t
	 */
	public void save(T t);

	/**
	 * 删除操作
	 * 
	 * @param t
	 */
	public void delete(T t);

	/**
	 * 修改操作
	 * 
	 * @param t
	 */
	public void update(T t);

	/**
	 * 添加或更新操作
	 * 
	 * @param t
	 */
	public void saveOrUpdate(T t);

	/**
	 * 通过Id查询
	 * 
	 * @param id
	 * @return
	 */
	public T findById(java.io.Serializable id);

	/**
	 * 查询所有
	 * 
	 * @return
	 */
	public List<T> findAll();

	/**
	 * 通过条件查询所有
	 * 
	 * @param condition
	 * @param params
	 * @return
	 */
	public List<T> findAllByCondition(String condition, Object[] params);
	
	/**
	 * 条件+分页查询
	 * 
	 * @param condition
	 * @param params
	 * @param startIndex
	 * @param pageSize
	 * @return
	 */
	public List<T> findAllByPage(String condition, Object[] params,
			int startIndex, int pageSize);

	/**
	 * 查询总记录数+条件查询
	 * 
	 * @param condition
	 * @param params
	 * @return
	 */
	public int getTotalRecord(String condition, Object[] params);

	/**
	 * 离线查询
	 * 
	 * @param criteria
	 * @return
	 */
	public List<T> findAllByQBC(DetachedCriteria criteria);

	/**
	 * 使用QBC进行分页查询
	 * 
	 * @param criteria
	 * @param condition
	 * @param params
	 * @return
	 */
	public List<T> findAllByPage(DetachedCriteria criteria, int startIndex,
			int pageSize);
	
}
